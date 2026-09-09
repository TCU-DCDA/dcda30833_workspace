# PROJECT 6 — Data-Driven Expressive System

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 13 (Wednesday)
**Tools:** p5.js (Tone.js optional) + a real dataset
**Submission:** GitHub link to your project folder + short written reflection

---

## Purpose

This project builds a system whose behavior is **driven by data that came from
somewhere in the world** — and asks you to take responsibility for the
correspondence you chose.

Everything before this used materials you invented: shapes, palettes, words,
sounds. Data is the first material in this course with a **prior life**. Someone
collected it, for a reason, using categories they decided on, leaving out
whatever didn't fit. By the time it reaches your sketch it has already been
shaped several times. Your mapping is one more shaping, not the first.

This project synthesizes:

- **LAB 10 — Mapping Without Message:** the mapping operation, isolated
- **LAB 11 — Three Mappings, Same Data:** the mapping as the site of authorship
- **PROJECT 5 — Generative Sound / Sonified System:** systems that run and behave

---

## Precedents — System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples —
> but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes its
> rules can produce, more often than a single finished "right answer." There is
> no result to match: a strong system can generate many different outcomes,
> including ones no one has made yet.

*Why take other makers' work apart? Because you are always collaborating with what came before — the autopsy just makes it deliberate. See [Collaboration in Computer Art](../context/collaboration.html).*

Before you build, take apart three works that treat data as a material with
stakes rather than as a neutral input.

**Look at:**

- **W. E. B. Du Bois — *Data Portraits* (1900):** hand-drawn charts of Black
  American life, made for the Paris Exposition. They are rigorous and they are
  arguing. Du Bois chose spirals, unconventional color, and deliberate breaks in
  scale because the argument required them — a century before anyone called this
  "data visualization," and a definitive answer to the idea that visual form is
  neutral.
- **Giorgia Lupi & Stefanie Posavec — *Dear Data* (2014–15):** a year of weekly
  hand-drawn postcards, each mapping a week of personal data with a legend
  invented for that week alone. The mapping changes every time; the data is
  mundane; the results are not.
- **Mark Lombardi — *Narrative Structures* (1990s):** hand-drawn network
  diagrams of financial and political relationships, built from public records.
  A structure, drawn carefully, that says what no sentence in the sources says.

**Where to find them (free):**

- Du Bois — [the charts themselves, at the Library of Congress](https://www.loc.gov/pictures/item/2005679642/), free and high-resolution; part of the [1900 Paris Exposition collection](https://www.loc.gov/collections/african-american-photographs-1900-paris-exposition/about-this-collection/)
- Lupi & Posavec — [dear-data.com](https://www.dear-data.com/theproject), with the postcards and their hand-written legends
- Lombardi — [the drawings at Pierogi Gallery](https://www.pierogi2000.com/artists/mark-lombardi/), which represents his estate

**Autopsy questions (ask of each):**

1. What is the mapping? Could you restate the correspondence in a sentence?
2. What is fixed, and where does the maker's judgment enter?
3. Which single constraint is doing the most work?
4. What state or condition does the structure dramatize, setting aside "what it
   means"?
5. What does this mapping make impossible to notice?

*In class: examine 2–3 of these together at the project's launch (~20–30
minutes), then carry the same questions into your own build.*

---

## Core Requirements

Your system must:

- Be driven by a **real dataset** you did not fabricate — at least 100 rows, from
  a source you can cite
- **Run and behave** — data drives motion, sound, growth, decay, or interaction,
  not a static image
- Hold a consistent **system identity**: someone should see it twice and
  recognize it
- Include **one mapping you can defend**, stated plainly in the README
- Include **one thing the system deliberately refuses to show**, also stated in
  the README (see below)

---

## System Requirements

Choose **one** relationship between data and behavior:

1. **Data as parameter** — values set properties of a running system: speed,
   density, size, interval, lifespan.
2. **Data as sequence** — the dataset is read through over time; its order and
   pacing structure the piece.
3. **Data as force** — values govern how elements affect *each other*: attraction,
   repulsion, contagion, thresholds.

Whichever you choose:

- Your visual or sonic language should come from earlier work in this course.
  This project is not the place to also learn a new medium.
- The system must produce variation, not a single fixed output.
- No legends, axes, or captions **on the canvas**. Everything explanatory lives
  in the README. If the piece needs a label to work, it is a chart with extra
  steps.

---

## The Refusal

Every mapping loses something, and this course's position is that the loss is
worth naming rather than hiding.

**Name one thing your system will not represent** — a distinction that exists in
the data and does not survive your mapping — and say in the README why you chose
to lose that particular thing rather than something else.

This is not an apology for a limitation. Sampling anything at all guarantees that
some differences will not come through; the honest move is to know which ones and
to have decided. A system that claims to show everything is the only kind that is
certainly lying.

---

## Working with AI on This Project

The terms from PROJECT 5 carry forward — see
[AI in This Course](../context/ai_policy.html).

Data work is where an assistant is most useful and most quietly risky: it will
happily clean your dataset in ways you didn't ask for and won't notice. Drop rows,
coerce types, fill blanks with means. Those are all **mapping decisions made by
something other than you**.

- **Prompt for constraints and behaviors, not outcomes.**
- **The Explanation Test** applies to data handling too: if you can't say what
  happened to the rows that didn't parse, you don't yet know your dataset.
- **Keep `ai_log.md`** — tool, prompts, what you kept, what you rejected and why.
  Include any place the assistant changed your data without being asked.

Using no AI is a documented choice; say so in the README.

---

## Technical Requirements

- **p5.js**; Tone.js if your system is sonic
- Data loaded in `preload()` from a CSV or JSON file **committed to your repo**
  (do not rely on a live API that may be down at critique)
- Cite the source and the retrieval date in the README
- Runs in a browser from your GitHub Pages URL with no setup

---

## Process Documentation Requirements

Your project folder must include:

- `index.html`, `sketch.js`, and your data file
- `README.md` explaining:
    - the dataset, its source, its retrieval date, and who made it and why
    - the mapping, stated as a defensible correspondence
    - **the refusal** — what the system will not show, and why that one
    - what you did with rows that didn't parse cleanly
- `ai_log.md`, if you used an assistant

---

## Reflection (5–7 Sentences)

Whose decisions were already inside your dataset before you touched it — what did
someone else decide to count, and to leave uncounted? Having built three mappings
in LAB 11 and committed to one here, how did you choose? What would a viewer
conclude from your piece that the data does not actually support? Did your system
end up dramatizing the data or the *act of measuring* — and were you able to
tell the difference? What would change if you ran it on a different dataset with
the same shape?

---

## How This Project Fits the Course Arc

You have now built systems in four materials: image, text, sound, and data. In
each, the same argument held — the rules perform the content, and the constraint
generates rather than limits.

Data is where that argument stops being only aesthetic. A mapping decides which
differences in the world become visible, and that is true of every system that
represents anything, including the ones you will use rather than build.

Next, **Week 14 — Translation & Failure** asks what survives when a system is
rewritten in another medium, and what glitch produces that intention can't.

---

*End of PROJECT 6*
