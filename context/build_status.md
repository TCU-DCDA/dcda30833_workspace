# Course Build Status & Roadmap (Instructor)

A living checklist of what is authored and what remains. This is the single
source of truth for build progress; [labs_and_projects.md](labs_and_projects.md)
mirrors the assignment status, and the home page ([../index.html](../index.html))
shows it visually (color tiles = authored, grey = not yet).

---

## Milestone: First Half (Weeks 1–8)

The first half is the image-and-text arc (structure → motion → randomness →
color → gesture → text). **Assignments authored, site/decks polished and
accessibility-checked; the only open item is a curricular deck-coverage decision.**

### Remaining for the first half (polish)

- [x] **Project 4 — Animated & Interactive Concrete Poem (Week 8)** — authored; closes the text arc fed by Labs 6 & 7.
- [ ] **Deck coverage decision** — Weeks 3, 5, 6, 7, 8 have no dedicated slide deck. *(Only remaining first-half item.)*
  - **Direction:** these are hands-on technique weeks (randomness, color, mark-making, text), likely taught better through **live coding** than slides — build a sketch with the class in the p5.js editor, and teach from the assignment page + live precedent sketches projected on the site. Reserve committed decks for big conceptual framing (already built: Discovery, the Sublime, Deployment).
  - **Plans live in `live_coding/`** — Week 3 (Randomness) is drafted as the model; Weeks 5, 6, 7, 8 are skeletons ready to fill. To do: complete the four skeletons; confirm which—if any—still warrant a saved deck.
- [x] **`slide_decks/the_sublime/`** — was text-only (nothing broken); enriched with Richter and Klee images on their quote slides.
- [x] **Accessibility (WAVE)** — fixed across the course site and all three decks: contrast (faint grey, dark-theme dim greys, accent text, precedent-card labels) and very-small text raised to a readable floor; deck content no longer runs below the fold; deck images have descriptive alt text.
- [x] **Live verify** — first-half pages and decks confirmed rendering correctly on GitHub Pages.
- [x] **Optional:** live interactive concrete-poem recreation — `sketches/concrete_poem.html` (kinetic *Silencio*, after Gomringer); replaces the Project 4 placeholder on the home page.

---

## Authored (done)

- **Labs 0–8** (Lab 8 is Week 9, already drafted)
- **Projects 1–4** (Project 4 completes the first-half assignments)
- **Site & infrastructure:** Richter-style home page, HTML build pipeline
  (`build.sh` + pandoc), GitHub Pages enabled (serving `master` root),
  student-repo template
- **Precedents on the schedule:** four live, responsive p5.js recreations —
  Interruptions (Molnár), Schotter (Nees), Homage (Albers), and kinetic
  Silencio (Gomringer) — embedded as inline cards that close each first-half
  unit and link to that project's autopsy
- **Pedagogy scaffolding:** Lab → Autopsy → Project workflow (surfaced on the
  home page), per-project System Autopsy beat with vetted free exemplar links,
  examples policy (instructor + student-facing)

---

## Remaining — Second Half (Weeks 9–16 + finals)

- [ ] **Labs:** 9 (Rhythm Without Notes), 10 (Mapping Without Message), 11 (Three Mappings), 12 (System Identity Translation), 13 (Failure Harvest)
- [ ] **Projects:** 5 (Generative Sound), 6 (Data-Driven), Final Project, Final Portfolio
- [ ] **Decks** for second-half weeks (sound, data, translation)

---

## Cross-cutting thread — AI in the course

The course already frames AI as creative **material** (LAB 7 — Prompt as
Material; PROJECT 4 allows AI-generated text). Make it a coherent thread:

- [x] **Seed early** — the Week 3 live-coding plan connects "the machine
  decides" (chance) to AI as another deciding system.
- [x] **DCDA AI policy written** — [ai_policy.md](ai_policy.md): WRIT's
  discipline (Explanation Test, document/cite, no AI on learning labs, stay
  critical) reframed for creative coding (AI as collaborator/material,
  discovery over expression). Rendered to `context/ai_policy.html` and linked
  from LAB 7, and listed under "Course foundations" on the home page. *Still to
  do: reference it in the syllabus.*
- [ ] **Roll AI into later projects** — deliberate, scaffolded AI use in the
  back half (e.g., Projects 5/6/Final), analogous to WRIT's AI-assisted capstone
  "Project Zed," with an AI-collaboration log + citation.

---

## How to author and wire in a new assignment

The repeatable steps (same for every lab/project):

1. Write the `.md` in `labs/` or `projects/` (match the voice of existing
   files; projects include the Precedents / System Autopsy beat + examples
   blurb per [meta_labs_projects.md](meta_labs_projects.md)).
2. Add a `convert` line to [../build.sh](../build.sh) with the assignment's
   **week swatch color** (see the chart in `index.html`), then run `bash build.sh`.
3. In [../index.html](../index.html): flip that week's tile from grey to a
   live link; for a project, add the **Autopsy** marker (and any deck link).
4. For projects, add a free, reverse-engineerable exemplar to the "Where to
   find them" list; optionally author a live recreation in `sketches/` and
   embed it in "Precedents in Motion."
5. Commit and push — GitHub Pages publishes automatically.
