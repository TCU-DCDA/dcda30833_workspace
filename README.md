# DCDA 30833 — Creative Coding for the Humanities

**Form = Content · Systems Dramatize States · Discovery over Expression**

Curriculum, assignments, session plans, and theory materials for **DCDA 30833**,
an upper-division elective on code as an expressive medium within the humanities.

**Offered Spring 2027 · MW, 80-minute sessions · 15 instructional weeks + finals**

The course site is published from this repository via GitHub Pages —
[`index.html`](index.html) is the student-facing home page and the authoritative
index of assignments.

---

## Repository Structure

| Path | Contents |
|---|---|
| [`labs/`](labs/) | Low-stakes exercises isolating one technique each (Labs 0–13) |
| [`projects/`](projects/) | Synthesis assignments (Projects 1–6, Final Project, Final Portfolio) |
| [`live_coding/`](live_coding/) | Per-session teaching plans for every teaching week |
| [`context/`](context/) | Syllabus, schedules, policies, pedagogical foundations, build status |
| [`theory_sheets/`](theory_sheets/) | Cheat sheets — color, drawing, sound, generative art, interactive poetry |
| [`sketches/`](sketches/) | Live p5.js recreations of precedent works, embedded on the site |
| [`slide_decks/`](slide_decks/) | Decks for the conceptual framing weeks |
| [`readings/`](readings/) | Bibliography and viewings |
| [`templates/`](templates/) | Student repo / portfolio starter |
| [`proposal/`](proposal/) | Approval-process documents — a historical record, not the live course |
| [`assets/`](assets/) | Page template, stylesheet, media |
| [`old_files/`](old_files/) | Archive |

---

## Course Arc

Four materials, one method. Each unit constrains a parameter, lets rules place
the events, and asks what the system reveals.

| Weeks | Unit | Assignments |
|---|---|---|
| 1–2 | **Structure & Surface** — HTML/CSS as systems, then time | LAB 0, LAB 1, PROJECT 1 |
| 3–4 | **Chaos & Control** — randomness, then constraint | LAB 2, LAB 3, PROJECT 2 |
| 5–6 | **Color & Gesture** — one hue, palette as prison, mark-making | LAB 4, LAB 5, PROJECT 3 |
| 7–8 | **Language & Text** — text as shape, AI as material, interaction | LAB 6, LAB 7, PROJECT 4 |
| 9–11 | **Sound & Time** — envelope, rhythm, generative systems | LAB 8, LAB 9, PROJECT 5 |
| 12–13 | **Data & Society** — mapping, and what mapping costs | LAB 10, LAB 11, PROJECT 6 |
| 14–15 | **Synthesis** — translation, failure, final studio | LAB 12, LAB 13 |
| Finals | **Exhibition & Publication** — May 10–14 | Final Project, Final Portfolio |

Each unit runs **Lab → Autopsy → Project**: labs isolate a technique, the
autopsy reverse-engineers a precedent as a *system to take apart*, and the
project synthesizes both.

---

## Course Documents

- [**Syllabus**](context/syllabus.md) — the delivery syllabus, on the TCU template
- [**Semester Schedule**](context/semester_schedule.md) — instructor reference
- [**Student Calendar**](context/student_calendar.md) — week by week, with dates
- [**AI in This Course**](context/ai_policy.md) — AI as material, not vending machine
- [**Collaboration in Computer Art**](context/collaboration.md) — course reading
- [**Theory Foundations**](context/theory_foundations.md) — the pedagogical basis
- [**Build Status**](context/build_status.md) — what is authored and what remains

---

## Working on This Repository

The `.md` files are the source of truth; the `.html` files are generated.

```bash
bash build.sh        # regenerate HTML from Markdown (requires pandoc)
bash check-links.sh  # verify internal + external links
```

To add an assignment: write the `.md`, add a `convert` line to
[`build.sh`](build.sh) with the week's swatch color, flip the tile in
[`index.html`](index.html), rebuild, and push — Pages publishes automatically.
The full procedure is at the bottom of [build_status.md](context/build_status.md).

**Week swatch colors:** structure `#c1352b` · motion `#2f4b9b` · randomness
`#f2c12e` · emergence `#3f8a4f` · color `#6b4a9e` · gesture `#e0792e` · text
`#2f8f86` · poetry `#d56a8f` · sound `#a8408b` · data `#4aa8c4` ·
translation `#8a5a3c` · finals `#7a3b5c`

---

## Assessment

This course uses an **ungrading** model. No assignment carries points or a
percentage weight. Students receive qualitative feedback throughout and, at the
end, submit a portfolio with a self-evaluation proposing their final grade.

---

## Course Philosophy

This course moves away from "self-expression" and toward **system discovery**.
Code is not a tool for executing a pre-planned image; it is a medium for
dramatizing behaviors, probabilities, and logic. Constraints are treated as
engines rather than limits — a restricted palette, a single hue, a rule without
randomness, each producing more invention than an open field would.

> "Poems don't have meaning. They dramatize states of thought and states of feeling."
