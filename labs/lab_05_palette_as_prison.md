# LAB 5 --- Palette as Prison

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 5 (Thursday)\
**Tools:** p5.js\
**Submission:** GitHub link to your sketch

------------------------------------------------------------------------

## Purpose

This lab expands your color system from **one hue** to a **tightly
controlled palette**.

Instead of choosing colors freely, you will work inside a **small, fixed
set of colors** and allow:

-   probability
-   selection
-   repetition

to create variation.

This lab teaches you that **identity often comes from restriction**, not
abundance.

This lab prepares you directly for:

-   **PROJECT 3 --- Algorithmic Color Composition**

------------------------------------------------------------------------

## Core Idea

You are no longer designing individual colors.

You are designing a **population of colors** and letting rules decide:

-   which appear
-   how often
-   and where

The palette is your **prison**. Everything must happen inside it.

------------------------------------------------------------------------

## Restrictions

You **must use**:

-   A fixed array of **3--5 colors maximum**
-   Random selection **only from that array**
-   Generative placement and behavior

You **may not use**:

-   Unrestricted RGB randomness
-   Continuous hue shifting
-   External palettes or images
-   Manual color placement for composition

If a color appears that is not in your array, the rule is broken.

------------------------------------------------------------------------

## Suggested System Prompts (Choose One or Invent Your Own)

-   **Probability Field:** One palette color appears 70% of the time,
    others rarely.
-   **Palette Tiling:** A grid populated only by random palette choices.
-   **Dominant vs Accent:** One background color, two rare highlight
    colors.
-   **Drifting Swarm:** Particles that switch palette colors on
    collision.
-   **Layered Density:** Overdraw builds color intensity through
    repetition.

------------------------------------------------------------------------

## Starter Template

``` js
let palette = [
  color(20, 90, 90),
  color(210, 80, 90),
  color(50, 85, 95),
  color(0, 0, 100)
];

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  background(palette[0]);
}

function draw() {
  let c = random(palette); // only choose from the prison

  fill(c);
  ellipse(random(width), random(height), random(10, 60));
}
```

------------------------------------------------------------------------

## Reflection (3--5 Sentences)

Answer briefly:

1.  How did the fixed palette change your sense of freedom?
2.  Which color took over the system the most?
3.  Did repetition create harmony or tension? Why?

------------------------------------------------------------------------

## What This Lab Prepares You For

You now have the full color toolkit:

-   **LAB 4:** One-hue systems\
-   **LAB 5:** Palette-based systems

You are now fully prepared for:

➡ **PROJECT 3 --- Algorithmic Color Composition**

Where color is no longer decoration, but the **engine of the system**.

------------------------------------------------------------------------

*End of LAB 5*
