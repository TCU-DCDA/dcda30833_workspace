# LAB 6 — Text as Object

**Course:** DCDA 30833 — Creative Coding for the Humanities\
**Due:** Week 7 (Tuesday)\
**Tools:** p5.js\
**Submission:** GitHub link to your sketch

------------------------------------------------------------------------

## Purpose

This lab treats **text as visual and spatial material** — letters and
words as *shapes*, not as carriers of a message.

You will build a sketch that uses **a single word or a single letter**,
with all variation coming from how that text is placed in space:

-   size
-   position
-   rotation
-   repetition
-   density and overlap

By refusing to let the words *say* something, you will discover how much
rhythm, texture, and mood emerge when type stops being read and starts
being **seen**.

This is the typographic counterpart to LAB 4's one-hue constraint and
LAB 8's one-pitch constraint: one unit of text, many spatial states.

------------------------------------------------------------------------

## Core Idea

You are not writing a message.

You are designing a **system that treats text as a shape**.

One word. Many positions, sizes, and orientations.

The test: if a viewer could not read your word — if it were in a script
they didn't know — would the piece still hold together as a system? If
yes, the *form* is doing the work, not the meaning.

------------------------------------------------------------------------

## Restrictions

You **must use**:

-   `text()` and `textSize()`
-   A **single word or single letter** (choose one and never add others)
-   Spatial transformation: `translate()`, `rotate()`, `scale()`, loops
-   Variation through **size, position, rotation, repetition, or
    density**

You **may not use**:

-   Multiple words arranged into a phrase or sentence
-   Anything that depends on the viewer *reading* the word to "work"
-   Images or external assets
-   Color as the main variable (keep it simple — this lab is about
    spatial form, not palette)

If your sketch reads like a caption or a slogan, you have probably
violated the constraint.

------------------------------------------------------------------------

## Suggested System Prompts (Choose One or Invent Your Own)

-   **Letter Field:** one letter repeated across a grid, each cell
    rotated or scaled by a rule.
-   **Word Decay:** a word repeated down the canvas, transformed a little
    more each time until it dissolves into texture.
-   **Density Map:** text size or spacing mapped to position, so the word
    thickens and thins across the canvas.
-   **Orbiting Type:** the letters of one word placed around a center and
    rotated over time.
-   **Typographic Weather:** a single word drifting and accumulating like
    particles (use controlled randomness from LAB 3).

------------------------------------------------------------------------

## Starter Template

``` js
let word = "system"; // pick ONE word — its meaning is not the point

function setup() {
  createCanvas(400, 400);
  textAlign(CENTER, CENTER);
  noStroke();
  fill(20);
}

function draw() {
  background(240);

  let count = 12;            // how many times the word appears
  translate(width / 2, height / 2);

  for (let i = 0; i < count; i++) {
    push();
    let angle = (TWO_PI / count) * i;   // spread around a circle
    rotate(angle);
    translate(0, -120);                 // push outward from center

    textSize(map(i, 0, count, 12, 40)); // size as spatial variable
    text(word, 0, 0);
    pop();
  }
}
```

Change `word`, `count`, the transformations, and the mapping. Try
removing `background()` for accumulation, or adding `frameCount` for
motion.

------------------------------------------------------------------------

## Reflection (3–5 Sentences)

Answer briefly:

1.  What happened to the word's meaning as it became shape and texture?
2.  Which spatial variable — size, position, rotation, repetition, or
    density — did the most work?
3.  Could a viewer who could not read the word still experience the
    system? Why or why not?

------------------------------------------------------------------------

## What This Lab Prepares You For

Next, in **LAB 7 — Prompt as Material**, you will generate and curate
text through an AI assistant, treating language itself as a system that
pushes back.

Together, these two labs build toward **PROJECT 4 — Animated &
Interactive Concrete Poem** (Week 8), where you will add **motion** and
**interaction** to text-as-material. This lab gives you the spatial
grammar of type *before* those new forces enter.

------------------------------------------------------------------------

*End of LAB 6*
