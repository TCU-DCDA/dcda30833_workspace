# Week 14 — Translation & Failure · Live-Coding Plan

**Mode:** Conceptual Transfer · **MW, 80 min** · scaffolds LAB 12 (System Identity Translation) → LAB 13 (Failure Harvest)
**Where we work:** p5.js Web Editor with Tone.js, projected. Bring one of *your own* old sketches.

## Through-line (the one idea)

Two questions, and they are the same question from opposite sides.

**What makes a system the same system?** Rewrite a piece in another material and
find out which rules were ever about the logic and which were about the medium.

**What makes a system yours?** Break it on purpose and find out. A failure is a
behavior you did not design, which makes it the only reliable source of novelty
your intentions cannot reach.

## 0 · Open (5 min)

Read a Sol LeWitt wall drawing instruction aloud — a few sentences, no image.
Ask the room to describe what they'd draw. Collect three different answers. Then
say that every one of them is the work, and that LeWitt would agree.

## 1 · Live build A — "Translate the rule, not the look" (~20 min)

Take a system built earlier in the term — Week 5's weighted palette is ideal
because everyone has it — and state it as an instruction:

> *Four items in a fixed set. One is chosen 70% of the time; the other three
> share the remainder. Each choice is placed at random and drawn at low opacity,
> accumulating.*

Nothing in that sentence is about color. Now implement it three times, live:

1. **As color** — the original. Re-run it so the shape is fresh.
2. **As sound** — four pitches, or better, four *intervals*; the 70% one recurs;
   accumulation becomes overlapping releases.
3. **As text** — four words; the 70% one dominates the field; low opacity becomes
   small type or short lifespan.

Do not try to make (2) and (3) resemble (1). Ask after each: *is this the same
piece?*

Points to land:

- The probability structure survives every crossing untouched.
- **Something won't translate.** "Low opacity" has no clean equivalent in sound —
  is it volume, or reverb, or duration? That failure to translate is the most
  informative moment in the exercise: it locates the rule that was secretly about
  the medium.
- Reference [Casey Reas's *Software Structures*](https://artport.whitney.org/commissions/software-structures-2016/text.html),
  which is this exercise done rigorously and published.

## 2 · Discussion (5 min)

*Which version would you show if someone asked to see "the piece"? Does choosing
one undermine the claim that they're the same system?*

## 3 · Live build B — "Break it on purpose" (~20 min)

Open a working sketch and vandalize it in front of the class. Narrate the
judgment, not just the change — **the sorting is the skill.**

Run through six or eight quickly:

- delete a `background()` — or add one that wasn't there
- change `+=` to `*=`
- remove a `constrain()` and let values escape
- let a loop index run past the end of an array
- feed a negative size, or alpha above the maximum
- set an envelope release to 60 seconds
- comment out one line at random

For each, say **keep** or **discard** out loud and give one sentence of reason.
Most will be discards; that ratio is the lesson. When one is a keep, do the hard
part live: **make it reproducible.** Parameterize it, bound it, decide where it
happens — and notice how easily domestication kills the thing that was
interesting.

## 4 · Studio (~20 min)

Students begin **LAB 12 — System Identity Translation** (due Wednesday) and set
up `harvest.md` for **LAB 13 — Failure Harvest** (due Monday of Week 15).

While circulating:

- LAB 12's most common error is imitation — trying to make the translation
  *resemble* the original. Redirect to the written rule.
- Make them write the instruction first, in prose, before touching code.
- For LAB 13: insist the failures come from their **own** code. A borrowed glitch
  is a style, not a discovery.

## 5 · Exit (5 min)

*Name the rule in your system that would not survive translation. What was it
actually about?* — two sentences.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
