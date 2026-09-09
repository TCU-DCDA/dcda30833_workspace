# PROJECT 5 — Generative Sound / Sonified System

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 11 (Wednesday)
**Tools:** p5.js + Tone.js
**Submission:** GitHub link to your project folder + short written reflection

---

## Purpose

This project makes **sound the primary material**, not the accompaniment to a
picture.

You will build a system that runs on its own and *behaves* — one whose rules
produce sound that changes over time without repeating itself exactly, and which
a listener could sit with for several minutes and keep noticing new things.

This project synthesizes:

- **LAB 8 — Envelope Only:** the shape of a single sound in time
- **LAB 9 — Rhythm Without Notes:** the placement of sounds in time
- **PROJECT 2 — Generative Visual Study:** rule-based systems that vary

The shift from the visual half of the course is real: an image is available all
at once, and a sound system is only ever available *now*. Duration stops being a
container for the work and becomes the work's medium.

---

## Precedents — System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples —
> but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes its
> rules can produce, more often than a single finished "right answer." There is
> no result to match: a strong system can generate many different outcomes,
> including ones no one has made yet.

*Why take other makers' work apart? Because you are always collaborating with what came before — the autopsy just makes it deliberate. See [Collaboration in Computer Art](../context/collaboration.html).*

Before you build, take apart how others have made sound systems that run rather
than pieces that are played. The question is always the same: **what is the
rule, and what does the rule leave undetermined?**

**Look at:**

- **Steve Reich — *Piano Phase* (1967):** two performers play the same short
  figure at almost the same tempo. One drifts. Everything you hear for the next
  twenty minutes comes from that single difference. The score is a rule; the
  piece is what the rule does.
- **Terry Riley — *In C* (1964):** 53 short phrases, any number of performers,
  each advancing through them independently. No one decides the texture. The
  piece is different every time and recognizably itself every time — which is a
  working definition of system identity.
- **Brian Eno — generative and ambient work:** loops of differing lengths left
  to fall in and out of alignment, producing combinations no one placed. Eno's
  own framing is the useful one: he built a system and then listened to it,
  rather than composing what he already had in mind.

**Where to find them (free):**

- Steve Reich — Alexander Chen's [*Piano Phase* visualization](https://www.chenalexander.com/Piano-Phase), which draws each pianist as a line so you can *see* the two parts drift apart and realign
- Terry Riley — [a playable browser *In C* by Tero Parviainen](https://teropa.info/in-c/); the code is open and worth reading alongside the sound
- Generative music systems — [generative.fm](https://generative.fm/), a collection of free, open-source, endlessly running pieces in the Eno lineage
- Background — Tero Parviainen, [*How Generative Music Works*](https://teropa.info/loop/), a long, free, playable essay on exactly the systems above

**Autopsy questions (ask of each):**

1. What is the rule? Could you restate it in a few lines of pseudocode?
2. What is fixed, and where does chance, drift, or performer choice enter?
3. Which single constraint is doing the most work?
4. What state or behavior does the system dramatize, setting aside "what it
   means"?
5. If you changed one rule, what would happen — and would it still be the same
   piece?

*In class: examine 2–3 of these together at the project's launch (~20–30
minutes), then carry the same questions into your own build.*

---

## Core Requirements

Your system must:

- Be **fully generative** — it runs without you, and you do not trigger each
  sound by hand
- Produce a result that **varies over time** and does not loop back to an exact
  repeat within the listening period
- Maintain a recognizable **sonic identity** — someone should be able to hear two
  separate runs and identify them as the same system
- Continue to be worth listening to for **at least two minutes**
- Include a **visual layer that reports on the system's state** — not decoration,
  and not a waveform display, but a view that lets someone see what they are
  hearing

---

## System Requirements

Choose **one** organizing principle and commit to it:

1. **Phase System** — two or more cycles of slightly different length, left to
   drift against each other.
2. **Probability System** — a fixed set of possible events, each with a chance of
   firing; the texture is a consequence of the odds.
3. **Mapping System** — a continuous underlying variable (`noise()`, time of day,
   distance, a slowly changing value) driving one or more sound parameters.

Whichever you choose, your system must include:

- **Envelope as expression** (from LAB 8) — the shape of your sounds is a
  deliberate choice, not a default
- **Time as structure** (from LAB 9) — interval, density, silence, or phase
  doing real work
- At least one **constraint you impose on yourself** and state plainly in the
  README. A restricted pitch set, a single timbre, a fixed total density, no
  sound above a certain frequency — the constraint is part of the composition.

---

## Interaction Requirements

Interaction is **optional** in this project, but if you include it, it must
change the *system*, not the volume.

A slider that raises the mix is a control. A slider that changes the probability
of an event, or the drift rate between two loops, is a way of entering the
system. If you cannot say what your interaction changes about the rules, remove
it — a system that runs on its own is a legitimate and often stronger answer here.

---

## Technical Requirements

- **p5.js** for the visual layer, **Tone.js** for all sound
- Audio must start from a user gesture (`Tone.start()`)
- No pre-recorded audio, samples, or loops — all sound synthesized
- Default canvas `400 × 400` unless your system needs otherwise
- The piece must run in a browser from your GitHub Pages URL, with no setup

---

## Working with AI on This Project

AI use is **permitted and scaffolded** here, on the terms set out in
[AI in This Course](../context/ai_policy.html).

Sound is a good place to work with an assistant, because Tone.js has more API
surface than you can hold in your head and the failure modes are unfamiliar. Use
it — and keep the discipline from LAB 7:

- **Prompt for constraints and behaviors, not outcomes.** "Two loops at 0.5s and
  0.51s, one timbre" is a prompt. "Make it sound ambient and relaxing" is a
  request for a product.
- **The Explanation Test:** every line you submit is one you can explain. Delete
  what you can't.
- **Keep an AI collaboration log** in your project folder (`ai_log.md`): which
  tool, what you asked, what came back, what you kept, what you rejected and why.
  The rejections are the interesting part — they are where your judgment is
  visible.

If you use no AI at all, say so in the README. That is also a documented
methodological choice, not an omission.

---

## Process Documentation Requirements

Your project folder must include:

- `index.html` and `sketch.js`
- `README.md` explaining:
    - the organizing principle you chose, and why
    - the rule, stated plainly enough that someone could reimplement it
    - the constraint you imposed on yourself
    - what the visual layer reports on
- `ai_log.md`, if you used an assistant

---

## Reflection (5–7 Sentences)

What did your system do that you did not plan? Where did you have to stop
yourself from composing — from placing an event because it sounded good rather
than because a rule put it there? Which was harder to design: the sounds, or the
silence between them? Did the visual layer help you hear the system, or did it
start telling a different story than the sound? If you listened to your piece for
five minutes rather than thirty seconds, what changed?

---

## How This Project Fits the Course Arc

You have now built systems in three materials — image, text, and sound — using
the same underlying moves: constrain the parameters, let rules place the events,
and listen to what the system produces rather than executing a plan.

Next, in the **data** unit, the input stops being invented. You will take numbers
that came from somewhere in the world and ask what happens when a system's
behavior is driven by them — and what gets lost on the way in.

---

*End of PROJECT 5*
