# FINAL PROJECT — Expressive Generative System

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Finals period, May 10–14 — public exhibition at our assigned block
**Studio:** Week 15 (final build Monday; in-progress critique Wednesday)
**Tools:** Your choice, from anything the course has used
**Submission:** GitHub link to your project folder + artist statement; live on GitHub Pages

---

## Purpose

This is the self-directed work the semester has been building toward: **one
system, of your own design, that behaves like something.**

Everything before this told you what to constrain. This one asks you to choose
the constraint — which is the harder half, and the reason it comes last.

The exhibition is not a formality. Your system runs in front of people who did
not build it, on a machine that is not yours, from a URL. That has been true of
every assignment since Week 1; this is the one where it matters.

---

## Precedents — System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples —
> but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes its
> rules can produce, more often than a single finished "right answer." There is
> no result to match: a strong system can generate many different outcomes,
> including ones no one has made yet.

*Why take other makers' work apart? Because you are always collaborating with what came before — the autopsy just makes it deliberate. See [Collaboration in Computer Art](../context/collaboration.html).*

The precedents for this project are different in kind. Rather than a technique,
each is an artist who stayed with **one system long enough to find out what it
contained** — which is the question a final project puts to you in miniature.

**Look at:**

- **Vera Molnár:** decades spent on a small set of constraints — squares, lines,
  controlled disorder — treating each work as another run of a continuing
  investigation rather than a separate statement. Her phrase for the disruption
  she introduced was *1% disorder*.
- **Harold Cohen — AARON:** a drawing program he developed and lived with from
  1973 until his death in 2016. Over forty years the system learned to draw
  differently, and Cohen kept describing himself as its collaborator rather than
  its author.
- **Casey Reas — *Software Structures*:** one written structure, implemented
  several ways, exhibited side by side — the clearest available demonstration
  that the system and its output are different objects.

**Where to find them (free):**

- Vera Molnár — our [live *Interruptions* recreation](../sketches/interruptions.html) and a [p5.js walkthrough of *Structures de Quadrilatères*](https://cagrimmett.com/2022/03/08/how-to-create-vera-molnars-structure-de-quadrilateres-in-p5-js/)
- Harold Cohen — [the Computer History Museum's AARON materials](https://computerhistory.org/blog/harold-cohen-and-aaron-a-40-year-collaboration/)
- Casey Reas — [*Software Structures* at the Whitney's artport](https://artport.whitney.org/commissions/software-structures-2016/text.html)

**Autopsy questions (ask of each):**

1. What is the rule, stated as an instruction someone else could follow?
2. What is fixed, and where does chance or judgment enter?
3. Which single constraint is doing the most work?
4. What state or behavior does the system dramatize, setting aside "what it
   means"?
5. What would have to change for it to stop being the same system?

*In class: examine 2–3 of these together at the project's launch, then carry the
same questions into your own build.*

---

## Core Requirements

Your system must:

- Be **generative** — it produces variation from rules, and you do not place its
  parts by hand
- Have a **stated constraint** you imposed on yourself, named plainly in the
  README
- Hold a recognizable **identity** across runs: two viewings should be different
  and evidently the same system
- **Dramatize a state** through behavior rather than illustrate a subject
- Run in a browser from your GitHub Pages URL, on someone else's machine, with no
  setup and no explanation from you

It must also **draw on at least two** of the course's four materials — image,
text, sound, data. Not as a checklist: because the interesting systems this
semester were the ones where a rule from one material got applied to another.

---

## Scope

This is a two-week build with a critique in the middle, not a capstone thesis.

A good final project here is **one clear system explored properly**, not four
half-systems in a tab bar. If you are choosing between adding a feature and
understanding what your system already does, choose the second — it is what the
artist statement will need.

Reusing your own earlier work is encouraged: extend a LAB 13 keep, deepen a
PROJECT 5 phase system, translate something further than LAB 12 took it. Starting
fresh is also fine. What is not fine is starting fresh *and* starting late.

---

## Artist Statement (400–600 words)

Not a description of what you made. An account of what you found.

Address:

- **The system:** state the rule so that someone could reimplement it.
- **The constraint:** what you refused yourself, and what that refusal produced.
- **The discovery:** something the system does that you did not plan. If there is
  nothing, say so honestly — that is a finding about the system, and about how
  tightly you specified it.
- **The state it dramatizes:** what condition its behavior performs. Resist
  explaining what it *means*; describe what it *does*, and let the reader draw
  the rest.
- **The lineage:** which precedents, techniques, or classmates' work this is in
  conversation with. Per the course's framing, you are always collaborating —
  name it.

---

## Working with AI

The terms from PROJECT 5 and PROJECT 6 apply — see
[AI in This Course](../context/ai_policy.html).

At this point you have used AI as material (LAB 7), as a collaborator on a sound
system (PROJECT 5), and as a data assistant with its own quiet agenda
(PROJECT 6). For the final, the requirement is simply that the account be
complete:

- **`ai_log.md`** — tool, prompts, what you kept, what you rejected and why
- **The Explanation Test** — you can explain every line you submit, and you will
  be asked to, at the exhibition
- Using no AI is a documented methodological choice; state it in the README

---

## Technical Requirements

- Any of: p5.js, Tone.js, CSV/JSON data, the DOM
- Everything committed to your repo — no live APIs that may be down at the
  exhibition, no local file paths, no assets outside the repo
- Runs on first load; if it needs a click to start audio, say so on the canvas
- Tested from the **public URL**, on a machine that is not yours, before the
  exhibition. Case-sensitivity in file paths is the classic failure here.

---

## Process Documentation Requirements

Your project folder must include:

- `index.html`, your sketch files, and any data
- `README.md`: the rule, the constraint, what to look for, how long to watch,
  and any sources or data citations
- `statement.md`: your artist statement
- `ai_log.md`, if applicable

---

## Reflection

The reflection for this project is the artist statement. The broader
looking-back happens in the **Final Portfolio**.

---

## How This Project Fits the Course Arc

It is the argument of the course, made by you rather than to you: that form is
not a container for content but performs it, that systems dramatize states
rather than carry messages, and that constraint generates possibility instead of
removing it.

What follows is the [Final Portfolio](final_portfolio.html), where you assemble
the semester and assess it yourself.

---

*End of FINAL PROJECT*
