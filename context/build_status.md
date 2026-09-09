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

### Readiness for day 1 — ~95%

The course runs **Spring 2027 on a MW 80-minute schedule**. The registrar's
calendar affords **15 instructional weeks**, not 16: Weeks 1–15 map 1:1, and
Week 16 (Exhibition & Publication) moves to the assigned final exam block,
May 10–14. MLK (Mon, Jan 18) leaves Week 1 with a single meeting on Wed, Jan 20.

Target: all of Weeks 1–8 prepared before the term begins. Estimate by bucket:

- **Assignments** (Labs 0–7, Projects 1–4): ~100% — authored and live
- **Infrastructure & policies** (site, build pipeline, Pages, theory sheets,
  AI/collaboration/examples policies, deployment docs, link checker): ~95%
- **Teaching/session plans** (decks + live-coding): ~100% — all five live-coding
  plans drafted (Weeks 3, 5, 6, 7, 8)
- **Syllabus & admin**: ~90% — delivery syllabus authored and live; placeholders
  remain for section number, room, meeting time, and the Final Portfolio date

Path to 100% (priority order):

1. ~~Fill the Week 5/6/7/8 live-coding plans~~ — **done.**
2. ~~Finalize the syllabus~~ — **done:** [syllabus.md](syllabus.md), built and
   linked from the home page, with the AI-policy and collaboration references in.
3. **Make the student-repo a real GitHub *template repository*** (manual toggle on GitHub; day-1 critical, files are ready).
4. **Confirm the Weeks 1/2/4 session approach** (likely covered by existing decks).
5. **Fill the four syllabus placeholders** once the registrar assigns a room,
   time, section number, and final exam block.

### Remaining for the first half (polish)

- [x] **Project 4 — Animated & Interactive Concrete Poem (Week 8)** — authored; closes the text arc fed by Labs 6 & 7.
- [x] **Deck coverage decision** — Weeks 3, 5, 6, 7, 8 have no dedicated slide deck; all five are now taught from drafted **live-coding plans** instead.
  - **Direction:** these are hands-on technique weeks (randomness, color, mark-making, text), likely taught better through **live coding** than slides — build a sketch with the class in the p5.js editor, and teach from the assignment page + live precedent sketches projected on the site. Reserve committed decks for big conceptual framing (already built: Discovery, the Sublime, Deployment).
  - **Plans live in `live_coding/`** — all five drafted. Weeks 5 and 7 introduce technique and scaffold two labs each; Weeks 6 and 8 protect studio time and carry the in-class System Autopsy beat for PROJECT 3 and PROJECT 4. No saved deck appears warranted for these weeks.
- [x] **`slide_decks/the_sublime/`** — was text-only (nothing broken); enriched with Richter and Klee images on their quote slides.
- [x] **Accessibility (WAVE)** — fixed across the course site and all three decks: contrast (faint grey, dark-theme dim greys, accent text, precedent-card labels) and very-small text raised to a readable floor; deck content no longer runs below the fold; deck images have descriptive alt text.
- [x] **Live verify** — first-half pages and decks confirmed rendering correctly on GitHub Pages.
- [x] **Optional:** live interactive concrete-poem recreation — `sketches/concrete_poem.html` (kinetic *Silencio*, after Gomringer); replaces the Project 4 placeholder on the home page.

---

## Authored (done)

- **Delivery syllabus** — [syllabus.md](syllabus.md), on the TCU template, with
  the DCDA program outcomes, ungrading model, policy cross-links, and the real
  Spring 2027 MW schedule
- **Live-coding plans** — Weeks 3, 5, 6, 7, 8
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

## Remaining — Second Half (Weeks 9–15 + finals)

Sound arc and data arc are authored. Remaining: the Translation & Failure labs
(Week 14) and the two finals deliverables. Week swatches: sound `#a8408b`,
data `#4aa8c4`; Week 14 has none assigned yet.

- [x] **LAB 9 — Rhythm Without Notes** (Week 10) — authored; closes the sound labs with LAB 8.
- [x] **LAB 10 — Mapping Without Message** (Week 12) and **LAB 11 — Three Mappings, Same Data** (Week 13) — authored; the data labs.
- [ ] **Labs:** 12 (System Identity Translation), 13 (Failure Harvest)
- [x] **PROJECT 5 — Generative Sound / Sonified System** (Week 11) — authored; completes the **sound arc** (LAB 8 → LAB 9 → PROJECT 5). Autopsy precedents: Reich, Riley, Eno/generative.fm.
- [x] **PROJECT 6 — Data-Driven Expressive System** (Week 13) — authored; completes the **data arc** (LAB 10 → LAB 11 → PROJECT 6). Autopsy precedents: Du Bois, Lupi & Posavec, Lombardi.
- [ ] **Projects:** Final Project, Final Portfolio
- [ ] **Decks or live-coding plans** for second-half weeks (sound, data,
  translation) — the first half settled on live-coding plans for technique weeks;
  the same call likely applies here.

> Note: the Exhibition & Publication session formerly numbered Week 16 now runs
> in the assigned final exam block (May 10–14). See the readiness note above.

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
  from LAB 7, and listed under "Course foundations" on the home page. Referenced
  in the delivery syllabus under Course Policies.
- [x] **Rolled into PROJECT 5** — a "Working with AI on This Project" section:
  prompt for constraints not outcomes, the Explanation Test, and a required
  `ai_log.md` recording what was kept and what was rejected. Opting out is an
  allowed, documented choice. *Carry the same section into PROJECT 6 and the
  Final Project.*
- [x] **Carried into PROJECT 6** — with a data-specific warning: an assistant
  will clean a dataset in ways you did not ask for, and those are mapping
  decisions made by something other than you.

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
