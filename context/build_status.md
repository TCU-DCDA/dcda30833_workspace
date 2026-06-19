# Course Build Status & Roadmap (Instructor)

A living checklist of what is authored and what remains. This is the single
source of truth for build progress; [labs_and_projects.md](labs_and_projects.md)
mirrors the assignment status, and the home page ([../index.html](../index.html))
shows it visually (color tiles = authored, grey = not yet).

---

## Milestone: First Half (Weeks 1–8)

The first half is the image-and-text arc (structure → motion → randomness →
color → gesture → text). **All assignments are now authored; only polish remains.**

### Remaining for the first half (polish)

- [x] **Project 4 — Animated & Interactive Concrete Poem (Week 8)** — authored; closes the text arc fed by Labs 6 & 7.
- [ ] **Deck coverage decision** — Weeks 3, 5, 6, 7, 8 have no dedicated slide deck. Decide whether to build them or teach those sessions from improvised slides.
- [ ] **Fix `slide_decks/the_sublime/images/`** — empty folder; the Week 4 deck likely has broken image references.
- [ ] **Live verify** — spot-check that first-half pages (Labs 0–7, Projects 1–4) render correctly on GitHub Pages.
- [ ] **Optional:** author a live interactive concrete-poem recreation in `sketches/` to replace the Project 4 precedent-card placeholder ("SOON") on the home page.

---

## Authored (done)

- **Labs 0–8** (Lab 8 is Week 9, already drafted)
- **Projects 1–4** (Project 4 completes the first-half assignments)
- **Site & infrastructure:** Richter-style home page, HTML build pipeline
  (`build.sh` + pandoc), live p5.js precedent sketches, GitHub Pages enabled
  (serving `master` root), student-repo template
- **Pedagogy scaffolding:** Lab → Autopsy → Project workflow, per-project
  System Autopsy beat with vetted free exemplar links, examples policy
  (instructor + student-facing)

---

## Remaining — Second Half (Weeks 9–16 + finals)

- [ ] **Labs:** 9 (Rhythm Without Notes), 10 (Mapping Without Message), 11 (Three Mappings), 12 (System Identity Translation), 13 (Failure Harvest)
- [ ] **Projects:** 5 (Generative Sound), 6 (Data-Driven), Final Project, Final Portfolio
- [ ] **Decks** for second-half weeks (sound, data, translation)

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
