# LAB 2 — Random Without Design

**Course:** DCDA 30833 — Creative Coding for the Humanities  
**Due:** Week 3 (Thursday)  
**Tools:** p5.js  
**Submission:** GitHub link to your sketch

---

## Purpose

This lab explores the opposite extreme of Lab 1. Where Lab 1 was **all rule and no chance**, this lab is **all chance and no rule**.

You will build a sketch that uses **raw, unfiltered randomness** to generate visual output.

The goal is not to make something "beautiful" or "composed." The goal is to experience:

-   **Chaos**
-   **Visual overload**
-   **Instability**
-   **Unpredictability**

You are exploring what happens when you remove all constraints and let the machine roll the dice on every decision. This is **randomness without design**.

---

## Restrictions

You **must use**:

-   `random()` (heavily and frequently)
-   `background()` (or lack thereof for trails)
-   Shapes, lines, and colors determined by chance

You **may not use**:

-   `for` or `while` loops to create structured grids or patterns
-   `map()` or `constrain()` to tame the values
-   `if` statements that impose strict order or composition
-   `noise()` (Perlin noise is too smooth for this lab; we want raw chaos)

**Let the randomness be unfiltered.** If a shape draws off-screen, let it. If colors clash, let them. Do not try to "fix" the output.

---

## Starter Template

```js
function setup() {
  createCanvas(windowWidth, windowHeight);
  background(240);
  // frameRate(10); // Optional: slow down the chaos if needed
}

function draw() {
  // Use random() for everything: position, size, color
  let x = random(width);
  let y = random(height);
  
  // Random colors
  let r = random(255);
  let g = random(255);
  let b = random(255);
  
  fill(r, g, b, random(50, 200));
  noStroke();
  
  // Draw something chaotic
  // Try changing the shape or adding more random parameters
  ellipse(x, y, random(10, 200));
}
```

---

## Reflection (3–5 Sentences)

Answer briefly:

1.  How does this "pure randomness" feel compared to the "pure rules" of Lab 1?
2.  What is frustrating or limiting about having no control over the composition?
3.  Did any interesting visual moments happen purely by accident?

---

## What This Lab Prepares You For

Next week, in **Lab 3 (Controlled Randomness)**, you will combine these two worlds. You will learn to:

-   Tame randomness
-   Use probability
-   Apply constraints to chance

This lab shows you why **unfiltered randomness** is rarely enough on its own—it needs design to become art.
