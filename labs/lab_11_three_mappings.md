# LAB 11 — Three Mappings, Same Data

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 13 (Monday)
**Tools:** p5.js (Tone.js optional)
**Submission:** GitHub link to your lab folder — three sketches plus a short note

---

## Purpose

This lab runs a controlled experiment with exactly one variable.

You will take **the dataset you used in LAB 10** — unchanged, not a row edited —
and build **three separate sketches** from it. Same numbers, three different
mappings. Then you will look at what you made and answer an uncomfortable
question: if the data is identical and the results are unrecognizable as
relatives, what exactly was the data contributing?

---

## Core Idea

The dataset is not the work.

It is easy to believe that data has a shape and that visualizing it reveals that
shape. This lab is designed to make that belief hard to hold. Three honest
mappings of one file will produce three works with different moods, different
apparent claims, and different things they make impossible to notice — with no
dishonesty at any step.

That gap is where your authorship actually lives. Not in the data, and not in the
code, but in the **choice of correspondence** between them.

---

## Restrictions

You **must use**:

- **One dataset, used three times, entirely unmodified** — same file, same rows
- **Three distinct sketches**, in three files (`mapping_a.js`, `mapping_b.js`,
  `mapping_c.js` or three folders)
- Three genuinely different **kinds** of mapping — not three color schemes. At
  least one of your three must differ from the others in *what parameter is
  driven*, not just how much

You **may not use**:

- Different data for different versions
- Filtering, sorting, or aggregating differently between versions (that changes
  the data, which is a different experiment — a good one, but not this one)
- Explanatory text on any of the three canvases

**At least one of your three must be a mapping you consider bad** — one that
loses something important, exaggerates a difference, or produces a false
impression. Build it properly anyway. You cannot argue that mappings are
consequential if all of yours are flattering.

---

## Three Directions to Push (Pick Three, or Invent)

- **Spatial:** value → position. The most familiar, and the one that most
  strongly implies a claim.
- **Temporal:** value → duration or interval. The data stops being available at
  a glance; you have to wait for it.
- **Density:** value → how many marks, not how big. Quantity becomes texture.
- **Sonic:** value → pitch, rhythm, or amplitude. (Reuses LAB 8 and LAB 9.)
- **Relational:** value → how strongly elements attract or repel each other. The
  data governs behavior between things rather than a property of one thing.
- **Inverted:** take any mapping above and reverse its direction. Note how much
  changes for how little code.

---

## The Note (This Is the Real Assignment)

Alongside the three sketches, write **250–400 words** covering:

1. What each mapping made visible.
2. What each one made **impossible to see**. Be specific — name a real
   distinction in your data that a given mapping destroys.
3. Which of the three would you show someone if you wanted them to find the data
   alarming? Which if you wanted them to find it unremarkable? You built both.
4. Your `map()` calls each needed a low and a high. Say where those came from in
   each version, and what would change if you'd used the true min and max
   instead of a round number — or the reverse.

---

## A Note on Normalization

Something quiet happens in every one of your three sketches.

On its own, a value is just itself — a temperature, a count, a duration. The
moment you `map()` it against the rest of the column, it stops being itself and
becomes a **position in a distribution**: high *for this dataset*, unusual
*compared to these others*. That conversion is not neutral, and it is not
optional — it is what makes the value drawable at all.

It is also where most of the persuasive work of data happens, long before anyone
writes a caption. Watch for it in your three versions; it is the same operation
each time, doing different damage.

---

## Reflection (3–5 Sentences)

Answer briefly, after writing the note:

1. Did any of your three surprise you by being better than you expected — and
   was it the one you called "bad"?
2. Having made three, do you still think one of them is the *right* mapping for
   this data? What would "right" mean here?
3. What would you have to add to a sketch for a viewer to be able to tell that
   other mappings were possible?

---

## What This Lab Prepares You For

**PROJECT 6 — Data-Driven Expressive System**, where you will commit to one
mapping and defend it — knowing exactly how many others you could have chosen.

---

*End of LAB 11*
