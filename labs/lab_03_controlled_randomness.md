# LAB 3 — Controlled Randomness

**Course:** DCDA 30833 — Creative Coding for the Humanities  
**Due:** Week 4 (Thursday)  
**Tools:** p5.js  
**Submission:** GitHub link to your sketch

---

## Purpose

This lab is the **synthesis** of the previous two weeks.

-   **Lab 1** was pure rule (Order).
-   **Lab 2** was pure chance (Chaos).
-   **Lab 3** is **Controlled Randomness**.

You will build a system where randomness exists, but it is **tamed, shaped, and directed** by rules. This is the sweet spot of generative art: using code to curate chance.

You will move from "anything can happen" to "only specific, interesting things can happen."

---

## Restrictions

You **must use**:

-   `random()` or `noise()`
-   **Constraints** that limit where or how randomness appears (e.g., `if` statements, `map()`, `constrain()`)
-   **Probability** (e.g., `if (random() < 0.1) { ... }`)
-   Variables that define a specific range of behavior

You **may not use**:

-   Unbounded, chaotic randomness (like Lab 2)
-   Static, manually placed elements (like a drawing)
-   Hard-coded coordinates for every single shape

---

## Suggested System Prompts (Choose One)

-   **The Drunken Grid:** A perfect grid where cells occasionally rotate or vanish based on a probability roll.
-   **Constrained Growth:** Lines that grow randomly but are forced to stay within a specific circle or box.
-   **Limited Palette:** Randomly selecting colors, but *only* from a specific array of 3–5 harmonious colors.
-   **Noise Terrain:** Using `noise()` to create smooth, flowing movement instead of jittery `random()` chaos.
-   **Probabilistic Flowers:** Plants that grow with random variations in height and leaf count, but always look like the same species.

---

## Starter Template

```js
function setup() {
  createCanvas(400, 400);
  background(220);
  noLoop(); // Try removing this for animation
}

function draw() {
  // Example: A grid with probability
  let step = 40;
  
  for (let x = 0; x < width; x += step) {
    for (let y = 0; y < height; y += step) {
      
      // 1. The Rule: We are in a grid
      push();
      translate(x + step/2, y + step/2);
      
      // 2. The Chance: 50% chance to be a circle, 50% square
      let chance = random(1);
      
      if (chance < 0.5) {
        fill(50, 100, 200);
        ellipse(0, 0, step * 0.8);
      } else {
        fill(200, 100, 50);
        rectMode(CENTER);
        rect(0, 0, step * 0.8, step * 0.8);
      }
      
      pop();
    }
  }
}
```

---

## Reflection (3–5 Sentences)

Answer briefly:

1.  How did adding rules change the "feeling" of the randomness?
2.  What specific constraint (range, probability, threshold) gave you the most control?
3.  Does the result feel more "designed" than Lab 2? Why?

---

## What This Lab Prepares You For

This triad of labs (Rule → Chaos → Control) is the foundation for your next major assignment:

**PROJECT 2 — Generative Visual Study**

In Project 2, you will create a larger, more complex system that uses these techniques to explore a specific visual theme. You have now learned the three primary ingredients: **Structure, Variation, and Selection.**
