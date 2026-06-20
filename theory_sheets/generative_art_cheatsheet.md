# Generative Art Theory Cheat Sheet

A compact, practical guide to the key artistic, conceptual, and computational principles behind generative and algorithmic art. Designed for creative coding students working with p5.js, JS, Python, or creative AI tools.

---

## 1. What Is Generative Art?

Generative art is created **with systems**, not by hand.  
A generative artwork is produced using:
- rules  
- algorithms  
- randomness  
- data  
- interactions  
- simulations  

The artist designs the **system**, not the final image.

---

## 2. The Core Logic of Generative Systems

### Deterministic Rules
If you give the same inputs → you get the same output.

### Randomness
A source of variation; makes each run unique.

### Controlled Randomness
Use constraints to shape the output:
- ranges  
- weights  
- probabilities  

### Emergence
Simple rules → complex behaviors.

### Iteration
Loops build structure:
- grids  
- spirals  
- noise fields  

---

## 3. Visual Building Blocks

### Shapes
- circles  
- lines  
- polygons  
- Bézier curves  

### Primitives for Complexity
- repeated elements  
- scaled patterns  
- rotation/translation  
- layering  

### Negative Space
Design the empty space as carefully as the marks.

---

## 4. Randomness vs. Noise

### Randomness
- abrupt, unpredictable  
- good for spark, energy, scatter  

### Perlin Noise
- smooth, continuous  
- natural variation  
- good for clouds, terrain, organic movement  

Example:
```js
let x = noise(t) * width;
```

---

## 5. Systems for Generative Art

### Grids
Divide space into columns/rows; apply variations.

### Fields
Vector fields or noise fields that direct motion.

### Agents
Autonomous particles that:
- wander  
- follow rules  
- avoid/seek targets  

### Recursion
Functions calling themselves to create:
- fractals  
- branching trees  
- subdivision patterns  

### L-Systems
Grammar rules for growing organic forms.

---

## 6. Color Strategy for Generative Art

- choose a **limited palette** (3–5 colors)  
- base hue + variation via saturation/value  
- noise for softer gradients  
- contrast to create depth  
- randomness for accents only  

---

## 7. Motion & Animation Principles

Borrowed from animation and physics:
- easing  
- acceleration  
- friction  
- oscillation  
- repetition  
- rhythm  

Movement should reflect the “logic” of the system.

---

## 8. Composition in Generative Art

Traditional principles still matter:
- balance (symmetry/asymmetry)  
- visual hierarchy  
- focal points  
- density vs open space  
- directional flow  

Use randomness inside structure, not instead of structure.

---

## 9. Interaction as a Generative Force

User input becomes part of the system:
- mouse position → noise seed  
- click → state change  
- drag → force applied  
- keyboard → mode switch  
- audio → reactive elements  

Interactive generative art invites exploration.

---

## 10. Data-Driven Generative Art

Data can shape:
- position  
- color  
- motion  
- text  
- sound  

Example:
```js
fill(map(value, 0, 100, 0, 255), 100, 200);
```

Common data sources:
- APIs  
- sensors  
- text frequency  
- time and weather  

---

## 11. Algorithmic Composition Techniques

### Rule Variations
Add or subtract rules to shift complexity.

### Weighted Randomness
Some choices are more likely than others.

### Cellular Automata
Simple cell rules → complex patterns.  
(e.g., Conway’s Game of Life)

### Layered Systems
Combine:
- grid + noise  
- agents + color gradients  
- rules + randomness  

Most strong generative pieces use **multiple systems**.

---

## 12. Aesthetics of Generative Work

### Coherence vs Variation
A good system maintains identity across outputs.

### Signature Behavior
Every algorithm produces a distinct “voice.”

### Controlled Surprise
Too much randomness → chaos  
Too much structure → boring  

### Complexity at the Edge of Chaos
Most compelling generative art sits between order and noise.

---

## 13. Typical Student Pitfalls

- throwing randomness everywhere  
- ignoring composition  
- using too many colors  
- inconsistent scale or spacing  
- no system identity  
- no constraints (everything moves!)  
- lack of iteration/refinement  

---

## 14. Ethical & Conceptual Contexts

Generative art touches:
- authorship  
- agency  
- procedural creativity  
- automation  
- computational aesthetics  
- digital materiality  

Useful to reference:
- Sol LeWitt: “The idea becomes the machine.”  
- Vera Molnar  
- Casey Reas & Ben Fry  
- Manfred Mohr  
- L-Systems research (Lindenmayer)  

---

## 15. Teaching Metaphors

- “The system is the artwork.”  
- “Randomness is spice—don’t use the whole jar.”  
- “Rules are your paintbrush.”  
- “Noise is nature’s randomness.”  
- “Composition still matters.”  
- “Let the viewer explore the system, not the code.”  

---

## 16. Project Prompts for Students

- Noise-driven landscape generator  
- A grid that evolves each frame  
- A self-portrait using only algorithmic strokes  
- Particle agents responding to mouse movement  
- Infinite generative poem-visual hybrid  
- Randomized color field compositions (Rothko-inspired)  
- A rule-based decorative pattern generator  
- Generative typography (letters as particles)  

---

_End of cheat sheet._
