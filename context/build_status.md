# Course Build Status & Roadmap (Instructor)

A living checklist of what is authored and what remains. This is the single
source of truth for build progress; [labs_and_projects.md](labs_and_projects.md)
mirrors the assignment status, and the home page ([../index.html](../index.html))
shows it visually (color tiles = authored, grey = not yet).

*Last verified: October 22, 2026.*

---

## Summary

**The course is fully authored.** Every assignment (Labs 0–13, Projects 1–6,
Final Project, Final Portfolio) and every session plan is written, built, and
live. No home-page tile is grey. What remains is setup and registrar
information, not content.

The course runs **Spring 2027 on a MW 80-minute schedule**. The registrar's
calendar affords **15 instructional weeks**, not 16: Weeks 1–15 map 1:1, and
the Exhibition & Publication session runs in the assigned final exam block,
May 10–14. MLK (Mon, Jan 18) leaves Week 1 with a single meeting on Wed, Jan 20.

### Readiness for day 1 — ~95%

- **Assignments:** 100% — Labs 0–13, Projects 1–6, Final Project, Final Portfolio
- **Session plans:** 100% — every teaching week (see below)
- **Infrastructure & policies:** ~95% — site, build, Pages, theory sheets,
  policies, and link checker done; the student template repository does not
  exist on GitHub yet
- **Syllabus & admin:** ~90% — authored and live; registrar placeholders remain

---

## Open items (priority order)

1. **Create the student template repository on GitHub.** Not just a toggle: as
   of this check, the only course repo in the `TCU-DCDA` org is
   `dcda30833_workspace`, and it is not a template. Create a new public repo
   seeded from [templates/student-repo/](../templates/student-repo/), then check
   **Settings → Template repository**. Steps are in
   [repo_setup_instructor.md](repo_setup_instructor.md#one-time-setup).
   Day-1 critical — students copy it in Week 1.
2. **Confirm the Week 2 deck.** Week 4 is wired to *The Sublime & Discovery*
   on the home page. Week 2's card has no deck link: *Discovery over Expression*
   is linked from the Week 1 card (alongside the deployment deck), and
   `slide_decks/DCDA30833_Week1_Week2_Deck.pptx` exists locally but is not
   linked anywhere. Decide which deck teaches Week 2 and link it there.
3. **Fill the syllabus placeholders** in [syllabus.md](syllabus.md) once the
   registrar assigns them: `[SECTION]`, `[ROOM]`, `[TIME]`,
   `[IF APPLICABLE]` (Zoom), and the Final Portfolio `[DATE]` in the
   due-dates table.
4. **Spot-check the six 403 links in a browser.** `check-links.sh` reports 0
   missing internal links and 0 external failures; six external links return
   403 (likely bot-blocking, e.g. loc.gov), not confirmed breaks.

---

## Authored (done)

### Assignments

- **Labs 0–13** — one technique each, from LAB 0 (Structure & Surface) through
  LAB 13 (Failure Harvest)
- **Projects 1–6** — each with the System Autopsy opener and vetted exemplar
  links, per [meta_labs_projects.md](meta_labs_projects.md)
- **Final Project** (Expressive Generative System) and **Final Portfolio**
  (Published Work & Self-Evaluation), both due in the finals block

The arcs:

- **Image & text** (Weeks 1–8): structure → motion → randomness → color →
  gesture → text, closing with PROJECT 4
- **Sound** (Weeks 9–11): LAB 8 → LAB 9 → PROJECT 5 (precedents: Reich, Riley,
  Eno/generative.fm)
- **Data** (Weeks 12–13): LAB 10 → LAB 11 → PROJECT 6 (precedents: Du Bois,
  Lupi & Posavec, Lombardi)
- **Translation & failure** (Weeks 14–15): LAB 12 → LAB 13 → Final Project

### Session plans

- **Live-coding plans** in `live_coding/` for Weeks 1, 3, 5–15. Technique weeks
  (3, 5, 7, 9, 10, 12, 14) build twice and hand into studio; project weeks
  (6, 8, 11, 13) shorten the builds and carry the System Autopsy beat; Week 15
  is studio plus a rehearsal critique.
- **Week 1** is a single session: a live build of LAB 0's HTML/CSS, then the
  deployment deck. Supported by the HTML & CSS theory sheet and a "Before You
  Start" primer in LAB 0.
- **Weeks 2 and 4** are taught from decks (see open item 2 for Week 2).
- **Decks** (HTML, in `slide_decks/`): Discovery over Expression, The Sublime &
  Discovery, Publishing as Part of the System (deployment).

### Syllabus & policies

- **Delivery syllabus** — [syllabus.md](syllabus.md), on the TCU template, with
  the DCDA program outcomes, ungrading model, policy cross-links, and the
  Spring 2027 MW schedule
- **AI policy** — [ai_policy.md](ai_policy.md), rendered and linked from LAB 7,
  the home page, and the syllabus
- **Collaboration framing** — [collaboration.md](collaboration.md), rendered and
  linked both ways with the AI policy
- **Working from Examples** — [working_from_examples.md](working_from_examples.md),
  the student-facing page, linked from the home page, syllabus, and AI policy.
  The instructor rationale stays in [examples_policy.md](examples_policy.md).

### Site & infrastructure

- Richter-style home page, hand-maintained
- `build.sh` (pandoc) for all labs, projects, theory sheets, and the
  student-facing context and readings pages (Student Calendar, Theory
  Foundations, The Sublime and Discovery, Student Repos & Deployment, Working
  from Examples, Bibliography, Viewings & Readings)
- **Instructor-only files are deliberately not built or linked:**
  `semester_schedule.md`, `labs_and_projects.md`, `examples_policy.md`,
  `repo_setup_instructor.md`, this file, and `live_coding/`. The repo is public,
  so they are still readable on GitHub and as raw files on Pages.
- GitHub Pages serving `master` root from `TCU-DCDA/dcda30833_workspace`
- `check-links.sh` link checker
- **Theory sheets:** Drawing, Generative Art, Color, HTML & CSS, Interactive
  Poetry, Sound Design
- **Live precedent sketches:** Interruptions (Molnár), Schotter (Nees), Homage
  (Albers), kinetic Silencio (Gomringer), embedded as inline cards closing
  the first-half units
- **Accessibility:** WCAG-AA contrast, readable text floor, emoji-free, deck
  images local with descriptive alt text

---

## Cross-cutting thread — AI in the course

Complete end to end:

- **Seeded** in the Week 3 live-coding plan ("the machine decides" → AI as
  another deciding system)
- **LAB 7 — Prompt as Material** introduces AI as material; PROJECT 4 allows
  AI-generated text
- **PROJECT 5** adds "Working with AI on This Project": prompt for constraints,
  not outcomes; the Explanation Test; a required `ai_log.md`. Opting out is a
  documented choice.
- **PROJECT 6** carries it forward with a data-specific warning: an assistant
  will clean a dataset in ways you did not ask for, and those are mapping
  decisions made by something other than you
- **Final Project** keeps `ai_log.md` and the Explanation Test, made live at the
  exhibition, where students explain lines on the spot

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
5. Update this file and [labs_and_projects.md](labs_and_projects.md).
6. Commit and push — GitHub Pages publishes automatically.
