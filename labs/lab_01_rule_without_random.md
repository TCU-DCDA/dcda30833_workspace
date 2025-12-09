# LAB 1 --- Rule Without Random

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 2 (Thursday)\
**Tools:** p5.js\
**Submission:** GitHub link to your sketch

------------------------------------------------------------------------

## Purpose

This lab demonstrates that **emergent behavior does not require
randomness**.

You will build a system that evolves over time using:

-   loops
-   math
-   repetition
-   transformation
-   `frameCount`

You are **not allowed** to use randomness of any kind.

------------------------------------------------------------------------

## Restrictions

You **may use**:

-   `for` loops
-   `sin()` and `cos()`
-   `frameCount`
-   `translate()`, `rotate()`, `scale()`
-   arithmetic operators

You **may not use**:

-   `random()`
-   `noise()`
-   shuffled arrays
-   external data

------------------------------------------------------------------------

## Suggested System Prompts (Choose One)

-   Breathing circles\
-   Rotating grid\
-   Orbiting shapes\
-   Pulsing waves\
-   Expanding lattice

Or invent your own system behavior.

------------------------------------------------------------------------

## Starter Template

``` js
function setup() {
  createCanvas(400, 400);
  rectMode(CENTER);
}

function draw() {
  background(20);
  let t = frameCount * 0.02;

  translate(width / 2, height / 2);

  // Build your rule-based system here
}
```

------------------------------------------------------------------------

## Reflection (3--5 Sentences)

Answer briefly:

1.  What rule or formula controlled your system?
2.  What surprised you about the resulting behavior?
3.  How did this differ from drawing something by hand?

------------------------------------------------------------------------

## What This Lab Prepares You For

Next week, you will introduce:

-   randomness
-   probability
-   controlled variation

This lab ensures you can **design structure before adding chance**.
