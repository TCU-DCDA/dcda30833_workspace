#!/usr/bin/env bash
#
# check-links.sh — verify links across the course site.
#
#   bash check-links.sh
#
# Checks every served HTML page for:
#   - Internal links: relative href/src targets that resolve to a real file.
#   - External links: HTTP status (follows redirects).
#
# Classification:
#   OK    2xx / 3xx
#   WARN  403 — usually bot-blocking (Medium, OpenProcessing, Rhizome, etc.);
#         these work in a browser, so they are reported but not failures.
#   FAIL  000 / 4xx (except 403) / 5xx — broken or unreachable.
#
# Exit code is non-zero if any internal link is missing or any external link
# FAILs, so it can gate a commit or run in CI.

set -uo pipefail
cd "$(dirname "$0")"

python3 - <<'PY'
import glob, os, re, subprocess, sys

UA = ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
      "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0 Safari/537.36")

files = (["index.html"]
         + glob.glob("context/*.html")
         + glob.glob("theory_sheets/*.html")
         + glob.glob("labs/*.html")
         + glob.glob("projects/*.html")
         + glob.glob("slide_decks/*/index.html")
         + glob.glob("sketches/*.html"))
files = [f for f in files if os.path.exists(f)]

internal_missing = []   # (file, link)
external = {}           # url -> set(files)

for f in files:
    d = os.path.dirname(f)
    html = open(f, encoding="utf-8").read()
    for link in re.findall(r'(?:href|src)="([^"]+)"', html):
        if link.startswith(("#", "mailto:", "data:", "javascript:")):
            continue
        if link.startswith(("http://", "https://")):
            external.setdefault(link, set()).add(f)
        else:
            target = os.path.normpath(os.path.join(d, link.split("#")[0].split("?")[0]))
            if target and not os.path.exists(target):
                internal_missing.append((f, link))

# ---- Internal ----
internal_total = "?"
print("== Internal links ==")
if internal_missing:
    for f, link in internal_missing:
        print(f"  FAIL  {f}  ->  {link}")
else:
    print("  all internal links resolve")

# ---- External ----
print("\n== External links ==")
fails, warns = [], []
for url in sorted(external):
    try:
        code = subprocess.run(
            ["curl", "-s", "-o", "/dev/null", "-L", "--max-time", "25",
             "-A", UA, "-w", "%{http_code}", url],
            capture_output=True, text=True, timeout=40).stdout.strip()
    except Exception:
        code = "000"
    if code == "403":
        warns.append((code, url)); tag = "WARN"
    elif code.startswith(("2", "3")):
        tag = "OK  "
    else:
        fails.append((code, url)); tag = "FAIL"
    print(f"  {tag} {code}  {url}")

# ---- Summary ----
print("\n== Summary ==")
print(f"  files scanned:        {len(files)}")
print(f"  internal missing:     {len(internal_missing)}")
print(f"  external WARN (403):  {len(warns)}")
print(f"  external FAIL:        {len(fails)}")
if warns:
    print("  (WARN = likely bot-blocking; verify in a browser, not a real break)")

sys.exit(1 if internal_missing or fails else 0)
PY
