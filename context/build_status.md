# Course Build Status & Roadmap (Instructor)

A living checklist of what is authored and what remains. This is the single
source of truth for build progress; [labs_and_projects.md](labs_and_projects.md)
mirrors the assignment status, and the home page ([../index.html](../index.html))
shows it visually (color tiles = authored, grey = not yet).

---

## Milestone: First Half (Weeks 1–8)

The first half is the image-and-text arc (structure → motion → randomness →
color → gesture → text). **Assignments authored, site polished,
accessibility-checked, all links verified.**

### Readiness for day 1 — ~80%

Target: all of Weeks 1–8 prepared before the term begins. Estimate by bucket:

- **Assignments** (Labs 0–7, Projects 1–4): ~100% — authored and live
- **Infrastructure & policies** (site, build pipeline, Pages, theory sheets,
  AI/collaboration/examples policies, deployment docs, link checker): ~95%
- **Teaching/session plans** (decks + live-coding): ~50%
- **Syllabus & admin**: ~70%

Path to 100% (priority order):

1. **Fill the Week 5/6/7/8 live-coding plans** (Week 3 is the model) — the bulk of what's left.
2. **Finalize the syllabus**; add the AI-policy / collaboration references.
3. **Make the student-repo a real GitHub *template repository*** (manual toggle on GitHub; day-1 critical, files are ready).
4. **Confirm the Weeks 1/2/4 session approach** (likely covered by existing decks).

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
  student-repo template, link checker (`check-links.sh`)
- **Visual design & accessibility:** home tiles as color plates with a
  per-section accent; Color Theory sheet illustration column (dimensions,
  harmonies, temperature, contrast, palette, accessibility); the collaboration
  piece's "three registers" diagram + live precedent thumbnail strips (also on
  Project 1); emoji-free, WCAG-AA contrast; all deck images local (no hotlinks);
  all links verified
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
- [x] **Collaboration framing** — [collaboration.md](collaboration.md): "you
  are always collaborating" (with the medium, the community, AI, language, art
  history); AI as the newest *register*, not a rupture; collaboration vs.
  abdication. Rendered, linked both ways with the AI policy, and on the home
  page. *Draft — open to further refinement.*
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
   embed it as the unit's inline precedent card on the schedule.
5. Commit and push — GitHub Pages publishes automatically.
