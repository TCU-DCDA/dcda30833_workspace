# DCDA 30833 — Creative Coding for the Humanities

**[Your Name]**

This repository holds all my work for DCDA 30833: Creative Coding for the
Humanities — every lab, project, and the final portfolio, in one place.

Course materials and schedule: https://tcu-dcda.github.io/dcda30833_workspace/

---

## Getting Started (Week 1 — do this once)

You created this repo from the course template. Now set it up so your work is
live on the web for the whole semester:

1. **Make sure your repo is Public** — Settings → General → scroll to
   "Danger Zone" → Change visibility (peers can view and critique each
   other's work).
2. **Enable GitHub Pages** — Settings → Pages → Source: **Deploy from a
   branch** → Branch: **`main`**, folder: **`/ (root)`** → Save.
3. **Wait ~1–2 minutes** for the first build, then visit your live site:
   `https://[username].github.io/[repo-name]/`
4. **Share your repository URL with the instructor** (however your section
   collects them).

That's it. From now on, anything you push is automatically live — you don't
touch deployment again.

> **Why enable Pages in Week 1, not at the end?** So every lab and project is
> live at its own URL the moment you push it. Publishing becomes routine, not a
> finals-week scramble.

---

## The Publish Loop

After setup, publishing *is* your normal Git workflow — there is no separate
"deploy" step:

```bash
git add .
git commit -m "Add Lab 3 controlled randomness"
git push
```

About a minute later, the live URL shows your changes. **"Done" means pushed
and live**, not just running on your laptop.

Prefer buttons? Use VS Code's Source Control panel (the branch icon in the
sidebar) or GitHub Desktop — same result.

---

## Structure

- `labs/` — weekly technique-focused exercises (see `labs/README.md`)
- `projects/` — major creative works with artist statements (see `projects/README.md`)
- `portfolio/` — final portfolio site and reflection

Each folder that contains an `index.html` becomes its own live page:

| Work | Live URL |
|------|----------|
| Your site root | `https://[username].github.io/[repo-name]/` |
| A lab | `…/labs/lab-03-controlled-randomness/` |
| A project | `…/projects/project-01-self-portrait/` |
| Portfolio | `…/portfolio/` |

---

## Running Sketches Locally

While you work (before pushing), preview a sketch by:

1. Opening its folder in VS Code, and
2. Using the **Live Server** extension (right-click `index.html` → "Open with
   Live Server"), or just opening `index.html` in your browser.

---

## If a Live Page Looks Wrong

- **Blank right after enabling Pages:** it's still building — wait a minute,
  then hard-refresh.
- **Works locally, blank when live:** almost always a capitalization mismatch.
  GitHub Pages is case-sensitive — `sketch.js` and `Sketch.js` are different
  files there. Match names exactly.
- **404 on a folder:** it needs an `index.html`.
- **Old version showing:** hard-refresh (Cmd/Ctrl+Shift+R) and confirm you
  actually pushed.

---

## Git Commands (reference)

```bash
git pull                 # Get latest changes (if working across machines)
git add .                # Stage your changes
git commit -m "message"  # Save a snapshot — describe what you did
git push                 # Upload to GitHub (and publish)
```
