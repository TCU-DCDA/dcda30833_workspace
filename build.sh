#!/usr/bin/env bash
#
# build.sh — regenerate styled HTML pages from Markdown sources.
#
# The .md files are the editable source of truth; the .html files are
# generated artifacts. Edit a .md, then run:  bash build.sh
#
# To add a newly authored lab/project/sheet, add one convert line below
# with its week's swatch color (see the chart in index.html).

set -euo pipefail
cd "$(dirname "$0")"

TPL=assets/assignment_template.html

convert () {
  local in="$1" accent="$2" title="$3" section="$4" deck="${5:-}" deckurl="${6:-}"
  if [ ! -f "$in" ]; then
    echo "skip (not yet authored): $in"
    return
  fi
  local out="${in%.md}.html"
  local deckargs=()
  if [ -n "$deckurl" ]; then
    deckargs=(-V deck="$deck" -V deckurl="$deckurl")
  fi
  pandoc "$in" -f gfm -o "$out" --template="$TPL" \
    -V accent="$accent" -V title="$title" -V section="$section" ${deckargs[@]+"${deckargs[@]}"}
  echo "ok -> $out"
}

# ---- Labs (accent = week swatch color) ----
# A 5th/6th arg cross-links a related deck (title, path) into the page header.
convert labs/lab_00_structure_surface.md     "#c1352b" "LAB 0 — Structure & Surface as Systems" "Labs" \
        "Publishing as Part of the System" "slide_decks/deployment/index.html"
convert labs/lab_01_rule_without_random.md   "#2f4b9b" "LAB 1 — Rule Without Random"            "Labs"
convert labs/lab_02_random_without_design.md "#f2c12e" "LAB 2 — Random Without Design"          "Labs"
convert labs/lab_03_controlled_randomness.md "#3f8a4f" "LAB 3 — Controlled Randomness"          "Labs"
convert labs/lab_04_one_hue_world.md         "#6b4a9e" "LAB 4 — One-Hue World"                  "Labs"
convert labs/lab_05_palette_as_prison.md     "#6b4a9e" "LAB 5 — Palette as Prison"              "Labs"
convert labs/lab_06_text_as_object.md        "#2f8f86" "LAB 6 — Text as Object"                 "Labs"
convert labs/lab_07_prompt_as_material.md    "#2f8f86" "LAB 7 — Prompt as Material"             "Labs" \
        "The Sublime & Discovery" "slide_decks/the_sublime/index.html"
convert labs/lab_08_envelope_only.md         "#a8408b" "LAB 8 — Envelope Only"                  "Labs"

# ---- Projects ----
convert projects/project_01_system_based_shape_self_portrait.md "#2f4b9b" "PROJECT 1 — System-Based Shape Self-Portrait" "Projects" \
        "Discovery over Expression" "slide_decks/discovery_over_expression/index.html"
convert projects/project_02_generative_visual_study.md          "#3f8a4f" "PROJECT 2 — Generative Visual Study"          "Projects"
convert projects/project_03_algorithmic_color_composition.md    "#e0792e" "PROJECT 3 — Algorithmic Color Composition"    "Projects"
convert projects/project_04_animated_interactive_concrete_poem.md "#d56a8f" "PROJECT 4 — Animated & Interactive Concrete Poem" "Projects"

# ---- Theory sheets (accent = nearest related mode color) ----
convert theory_sheets/generative_art_cheatsheet.md    "#3f8a4f" "Generative Art — Cheat Sheet"      "Theory Sheets"
convert theory_sheets/color_theory_cheatsheet.md      "#6b4a9e" "Color Theory — Cheat Sheet"        "Theory Sheets"
convert theory_sheets/drawing_theory_cheatsheet.md    "#e0792e" "Drawing Theory — Cheat Sheet"      "Theory Sheets"
convert theory_sheets/interactive_poetry_cheatsheet.md "#2f8f86" "Interactive Poetry — Cheat Sheet" "Theory Sheets"
convert theory_sheets/sound_design_cheatsheet.md      "#a8408b" "Sound Design — Cheat Sheet"        "Theory Sheets"

# ---- Course policy ----
convert context/collaboration.md "#2f8f86" "Collaboration in Computer Art" "Course Reading"
convert context/ai_policy.md "#2f8f86" "AI in This Course — Policy & Practice" "Course Policy"

echo "Done."
