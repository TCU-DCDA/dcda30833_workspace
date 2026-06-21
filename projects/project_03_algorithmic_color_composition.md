# PROJECT 3 --- Algorithmic Color Composition

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 6 (Thursday)\
**Tools:** p5.js\
**Submission:** GitHub link to your project folder + short written
reflection

------------------------------------------------------------------------

## Purpose

This project shifts your attention from **form and motion** to **color
as a system**.

Color is not decoration here. It is:

-   structure
-   behavior
-   constraint
-   identity

You will build a generative system where **color rules drive the
composition**.

This project synthesizes:

-   **PROJECT 2 --- Generative Visual Study**
-   **LAB 4 --- One-Hue World**
-   **LAB 5 --- Palette as Prison**

------------------------------------------------------------------------

## Precedents --- System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples ---
> but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes its
> rules can produce, more often than a single finished "right answer." There is
> no result to match: a strong system can generate many different outcomes,
> including ones no one has made yet.

*Why take other makers' work apart? Because you are always collaborating with what came before — the autopsy just makes it deliberate. See [Collaboration in Computer Art](../context/collaboration.html).*

Before you build, take apart how others have treated color as a system
rather than decoration. The point is not to imitate a palette but to
**reverse-engineer behavior**: recover the rules that govern *which*
colors appear, *where*, and *how often.*

**Look at:**

-   **Josef Albers --- *Homage to the Square*:** color as relational and
    behavioral --- the same color reads differently depending on its
    neighbors.
-   **Gerhard Richter --- *Color Charts*:** a fixed palette arranged by
    chance within a strict system (the logic behind this course site).
-   **Bridget Riley:** systematic color and the perceptual effects of
    constrained repetition.

**Where to find them (free):**

-   Josef Albers — [the Albers Foundation](https://www.albersfoundation.org/), a [p5.js recreation](https://medium.com/@romapandya49/making-a-generative-recreation-of-paintings-by-vera-molnar-and-josef-albers-in-p5-js-436ce07462e7), and our own [live recreation](../sketches/homage.html)
-   Gerhard Richter — [Colour Charts at gerhard-richter.com](https://www.gerhard-richter.com/)
-   Bridget Riley — [*True Stripes* at Tate Etc](https://www.tate.org.uk/tate-etc/issue-66-summer-2025/true-stripes-bridget-riley) (view-only; observe the system)

**Autopsy questions (ask of each):**

1.  What is the color rule? Could you restate it as a few lines of
    pseudocode?
2.  What is fixed about the palette, and where does selection or chance
    enter?
3.  Which single constraint is doing the most work?
4.  What state or behavior does the color system dramatize, setting aside
    "what it means"?
5.  If you changed one rule, what would happen?

*In class: examine 2--3 of these together at the project's launch
(~20--30 minutes), then carry the same questions into your own build.*

------------------------------------------------------------------------

## Core Requirements

Your system must:

-   Be **fully generative**
-   Use:
    -   a **restricted palette**
    -   or a **single-hue system**
-   Demonstrate:
    -   value shifts
    -   saturation changes
    -   or probabilistic color behavior
-   Maintain a consistent **color identity**
-   Produce variation over time or refresh

------------------------------------------------------------------------

## Color System Requirements

You must choose **one**:

1.  **Single-Hue System**
    -   One hue
    -   All variation through value and saturation
2.  **Limited Palette System**
    -   3--5 colors maximum
    -   All selections chosen probabilistically from this palette

You may not use unconstrained RGB randomness.

------------------------------------------------------------------------

## Technical Requirements

-   Use **p5.js**
-   Default canvas: `400 × 400`
-   No images
-   No external data
-   Color must be generated algorithmically

------------------------------------------------------------------------

## Process Documentation Requirements

Your project folder must include:

-   `sketch.js`
-   A `README.md` explaining:
    -   the palette or hue system
    -   how variation is produced
    -   what constraints shape color behavior

------------------------------------------------------------------------

## Reflection (5--7 Sentences)

How did limiting color change your thinking? Which color rule mattered
most? Did structure or color feel more dominant in this system? What
surprised you visually?

------------------------------------------------------------------------

## How This Project Fits the Course Arc

This project trains you to treat **color as behavior**, not surface.

Next, you will apply systems thinking to:

-   **drawing and mark-making**
-   **particles, stroke, and gesture**

------------------------------------------------------------------------

*End of PROJECT 3*
