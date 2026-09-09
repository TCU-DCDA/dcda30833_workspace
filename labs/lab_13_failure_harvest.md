# LAB 13 — Failure Harvest

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 15 (Monday)
**Tools:** p5.js and/or Tone.js
**Submission:** GitHub link to your lab folder — the harvest plus one developed system

---

## Purpose

All semester, when something broke and looked interesting, you were told to keep
it. This lab makes that instruction into a method.

You will **break your own systems on purpose**, document what happens, and then
develop one failure into a working piece. Not "make something glitchy" — that is
a style, and styles can be applied to anything. This is narrower and harder:
harvest *actual* failures from *your own* code, and take one seriously enough to
build with it.

---

## Core Idea

A failure is a behavior you did not design.

That makes it the most reliable source of genuine novelty available to you,
because it is the one thing your intentions cannot reach. When you set out to
make something surprising, you get what you can imagine being surprised by. When
your code does something wrong, you get something outside that.

The discipline is not in causing failures. It is in **looking at them long
enough to tell which ones are interesting** — and most are not. Harvesting means
sorting.

---

## Part A: The Harvest

Take systems you have already built — any of your labs or projects — and break
them deliberately. Document **at least eight** failures.

Ways to break a system on purpose:

- Remove a `background()` call, or add one where there wasn't one
- Feed a function a value from the wrong range — negative sizes, alpha above the
  maximum, a frequency below hearing
- Swap two variables that have the same type and different meanings
- Delete a `constrain()` or a `%` and let values run away
- Change a `+=` to a `*=`
- Let a loop index run past the end of its array
- Set a timing value to something absurd — an interval of 1ms, an envelope
  release of 60 seconds
- Comment out one line at random and run it. Repeat.

For **each** failure, record in `harvest.md`:

- what you changed (one line is enough)
- what happened
- **keep** or **discard**, and one sentence on why

Screenshots or short clips are welcome but the written judgment is the point.

---

## Part B: Develop One

Choose one **keep** and build it into a working system.

This means the failure has to stop being an accident. You must be able to
reproduce it deliberately, control its range, and decide where it happens.
Domesticating a glitch usually kills it — finding the version that keeps the
strangeness while becoming reliable is the actual work of this part.

Requirements for the developed piece:

- It runs stably (no console errors, no crash on refresh)
- The behavior that came from the failure is **now intentional and parameterized**
- You can state, in one sentence, what state or condition it dramatizes

---

## Restrictions

You **must use**:

- Your **own** prior code as the source of failures
- At least **eight** documented failures in `harvest.md`
- One developed system built from one of them

You **may not use**:

- Failures you read about or reproduced from a tutorial
- Pre-made glitch filters, shaders, or effects libraries
- A new system built from scratch to *look* broken

If your developed piece would look the same had nothing ever gone wrong, this
lab did not happen.

---

## Reflection (3–5 Sentences)

Answer briefly:

1. What was your ratio of **keep** to **discard**? What did the discards have in
   common?
2. When you domesticated your chosen failure, did it survive? What did you lose
   in making it reliable?
3. Is there a difference between a system that *fails* and a system whose rules
   you don't yet understand? Where did your eight land?

---

## What This Lab Prepares You For

The **Final Project**. Two things carry directly: the habit of treating
unplanned behavior as material rather than as error, and the harvest itself —
several of your keeps are viable starting points, and you have already written
down why they interested you.

---

*End of LAB 13*
