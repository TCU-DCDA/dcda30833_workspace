# PROJECT 1 --- System-Based Shape Self-Portrait

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 2 (Thursday)\
**Tools:** p5.js\
**Submission:** GitHub link to your project folder + short written
reflection

------------------------------------------------------------------------

## Purpose

This project is your first full **creative coding system** in the
course.

You are not making a drawing *of* yourself. You are designing a
**rule-based visual system** that behaves in a way that reflects
something about how you think, move, repeat, organize, or change.

This project builds directly from:

-   **LAB 0 --- Structure & Surface as Systems**
-   **LAB 1 --- Rule Without Random**

At this stage, your system must be:

-   **fully rule-based**
-   **deterministic**
-   **free of randomness**

This ensures that your focus is on **structure and behavior**, not
chance.

------------------------------------------------------------------------

## Precedents --- System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples ---
> but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes its
> rules can produce, more often than a single finished "right answer." There is
> no result to match: a strong system can generate many different outcomes,
> including ones no one has made yet.

*Why take other makers' work apart? Because you are always collaborating with what came before — the autopsy just makes it deliberate. See [Collaboration in Computer Art](../context/collaboration.html).*

Before you build, take apart how others have made systems in this mode.
The point is not to imitate a look but to **reverse-engineer behavior**:
treat each work as a rule set to recover, not a style to copy.

**Look at:**

-   **Sol LeWitt --- Wall Drawings:** the written instruction *is* the
    work; many different executions satisfy the same rule.
-   **Vera Molnár:** geometric systems built from repetition and small,
    controlled deviations.
-   **Manfred Mohr:** forms generated algorithmically from a single
    underlying structure (the cube).

**Where to find them (free):**

-   Sol LeWitt — [*A Wall Drawing Retrospective* on Google Arts & Culture](https://artsandculture.google.com/story/sol-lewitt-a-wall-drawing-retrospective-mass-moca/ygWRcTdreqHKIA) and [MASS MoCA's Wall Drawing 289](https://massmoca.org/event/walldrawing289/), which shows an instruction and its execution — the written rule *is* the work
-   Vera Molnár — [*Interruptions* recreation on OpenProcessing](https://openprocessing.org/sketch/584871/), a [p5.js walkthrough](https://cagrimmett.com/2022/03/08/how-to-create-vera-molnars-structure-de-quadrilateres-in-p5-js/), and our own [live recreation](../sketches/interruptions.html)
-   Manfred Mohr — [emohr.com](https://www.emohr.com/) (his own algorithm notes)

<div class="sketch-strip">
<figure><iframe src="../sketches/interruptions.html" title="Interruptions (live recreation)" loading="lazy"></iframe><figcaption>Our live <strong>Interruptions</strong> recreation (after Molnár) — move the mouse; <a href="../sketches/interruptions.html">open full size</a></figcaption></figure>
</div>

**Autopsy questions (ask of each):**

1.  What is the generating rule? Could you restate it as a few lines of
    pseudocode?
2.  What is fixed, and where --- if anywhere --- does variation enter?
3.  Which single constraint is doing the most work?
4.  What state or behavior does the system dramatize, setting aside
    "what it means"?
5.  If you changed one rule, what would happen?

*In class: examine 2--3 of these together at the project's launch
(~20--30 minutes), then carry the same questions into your own build.*

------------------------------------------------------------------------

## Core Requirements

-   Use **p5.js**
-   Be **rule-based only** (no randomness, no noise)
-   Use:
    -   motion
    -   repetition
    -   transformation
-   Run continuously using `draw()`
-   Produce a recognizable **system identity**
-   Default canvas: `400 × 400`

------------------------------------------------------------------------

## What You May Use

-   `frameCount`
-   `sin()` and `cos()`
-   loops
-   `translate()`, `rotate()`, `scale()`

------------------------------------------------------------------------

## What You May NOT Use

-   `random()`
-   `noise()`
-   images
-   external data

------------------------------------------------------------------------

## Reflection (5--7 Sentences)

What rule defines your system?\
How does it change over time?\
What surprised you?

------------------------------------------------------------------------

## Course Arc

This project establishes your ability to design **pure rule-based
form**.
