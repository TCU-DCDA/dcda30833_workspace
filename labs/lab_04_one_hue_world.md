# LAB 4 --- One-Hue World

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 5 (Tuesday)\
**Tools:** p5.js\
**Submission:** GitHub link to your sketch

------------------------------------------------------------------------

## Purpose

This lab introduces **color as a structured system**, not decoration.

You will build a generative sketch that uses **only one hue**, with all
variation coming from:

-   value (light ↔ dark)
-   saturation (dull ↔ intense)
-   opacity

By stripping away hue choice, you will discover how much **behavior,
contrast, and mood** can emerge from a single color family.

This lab prepares you for:

-   **LAB 5 --- Palette as Prison**
-   **PROJECT 3 --- Algorithmic Color Composition**

------------------------------------------------------------------------

## Core Idea

You are not designing a *color scheme*.

You are designing a **color behavior system**.

One hue. Many states.

------------------------------------------------------------------------

## Restrictions

You **must use**:

-   A **single hue only**
-   Variation through:
    -   brightness / value
    -   saturation
    -   alpha (opacity)
-   Generative rules (not hand composition)

You **may not use**:

-   Multiple unrelated hues
-   Full RGB randomness
-   Pre-made color palettes
-   Images or external assets

If your sketch "feels colorful," you have probably violated the
constraint.

------------------------------------------------------------------------

## Suggested System Prompts (Choose One or Invent Your Own)

-   **Breathing Field:** A grid where brightness pulses over time.
-   **Fading Orbits:** Rotating elements that shift only in opacity.
-   **Depth Illusion:** Brightness mapped to distance from center.
-   **Drifting Density:** Saturation increases as particles overlap.
-   **Value Waves:** Light-to-dark bands that scroll across the canvas.

------------------------------------------------------------------------

## Starter Template

``` js
let hueValue = 210; // pick ONE hue and never change it

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

function draw() {
  background(hueValue, 20, 15, 20); // soft trail

  let x = random(width);
  let y = random(height);

  let bright = random(30, 100);   // value only
  let sat = random(40, 100);      // saturation only
  let alpha = random(30, 90);     // opacity only

  fill(hueValue, sat, bright, alpha);
  ellipse(x, y, random(10, 60));
}
```

------------------------------------------------------------------------

## Reflection (3--5 Sentences)

Answer briefly:

1.  What did restricting hue remove from your decision-making?
2.  Which variation mattered most: brightness, saturation, or opacity?
3.  Did the sketch feel more unified or more limited? Why?

------------------------------------------------------------------------

## What This Lab Prepares You For

Next, in **LAB 5 --- Palette as Prison**, you will expand from:

-   **one hue**
-   to **a tightly controlled set of multiple colors**

You are learning how **color constraints create identity** before
learning how palettes create harmony.

------------------------------------------------------------------------

*End of LAB 4*
