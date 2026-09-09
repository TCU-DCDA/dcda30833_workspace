# Week 6 — Algorithmic Drawing & Mark-Making · Live-Coding Plan

**Mode:** Image / Gesture · **MW, 80 min** · supports PROJECT 3 studio (Algorithmic Color Composition)
**Where we work:** p5.js Web Editor, projected. Build from a blank sketch — including the mistakes.

> This session does double duty: it introduces mark-making *and* carries
> PROJECT 3's in-class **System Autopsy** beat. Studio time is protected — the
> project is due Wednesday.

## Through-line (the one idea)

An `ellipse()` is a shape. A **mark** is the trace of something that happened.
The difference is memory: a mark records a process, and a drawing made of marks
shows you the history of its own making. Today we stop placing shapes and start
**leaving evidence**. *What does the mark know that the shape doesn't?*

## 0 · Open (5 min)

Two sketches side by side: a grid of circles, and the same circles drawn with no
`background()` call and 10% alpha. Ask which one looks *drawn* and why. Nobody
will say "hue." They'll say density, pressure, hesitation — gesture words. Build
toward that.

## 1 · Live build A — "The mark remembers" (~15 min)

```js
let x, y;

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  background(210, 15, 12);
  x = width / 2;
  y = height / 2;
  noStroke();
}

function draw() {
  // no background() here — the canvas accumulates
  x += random(-6, 6);
  y += random(-6, 6);

  fill(210, 70, 90, 8);          // very low alpha: one mark is almost nothing
  ellipse(x, y, 12);
}
```

Beats to hit live:

- Run it and **wait**. Nothing looks like much for ten seconds, then a path
  emerges. Density is the medium; time is the brush.
- Raise alpha to 80. It goes crude immediately. *Restraint per mark is what buys
  you tone.*
- Add `x = constrain(x, 0, width)` and watch marks pile against the edge — the
  constraint becomes visible as darkness. The boundary draws itself.
- Swap `random(-6, 6)` for `map(noise(t), 0, 1, -6, 6)` with a slowly advancing
  `t`. Same code shape, entirely different hand: jitter becomes gesture.

## 2 · System Autopsy — color as behavior (~12 min)

PROJECT 3's required in-class beat. Take apart **two** of these together — not
as images to copy, but as rule sets to recover:

- **Albers, *Homage to the Square*** — [live recreation](../sketches/homage.html).
  The same color reads differently against different neighbors. The work is the
  relation, not the swatch.
- **Richter, *Colour Charts*** — a fixed palette arranged by chance inside a
  strict grid. (The logic this course site is built on.)
- **Riley** — constrained repetition producing perceptual effects the palette
  doesn't contain.

Ask of each: *What is the color rule, in three lines of pseudocode? What is fixed,
and where does chance enter? Which single constraint is doing the most work?*

Connect it forward: in build A, low alpha plus repetition produced tones that
were not in the palette. Albers is making that same argument by hand.

## 3 · Live build B — "Many hands" (~15 min)

One wanderer is a line. A population of them is a drawing.

```js
let walkers = [];

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  background(210, 15, 12);
  noStroke();
  for (let i = 0; i < 40; i++) {
    walkers.push({ x: random(width), y: random(height) });
  }
}

function draw() {
  for (let w of walkers) {
    w.x += random(-4, 4);
    w.y += random(-4, 4);

    // color reports on a state, not on position
    let fromCenter = dist(w.x, w.y, width / 2, height / 2);
    fill(210, map(fromCenter, 0, 280, 20, 90), 90, 10);
    ellipse(w.x, w.y, 8);
  }
}
```

Add one rule at a time:

1. **Let them interact** — nudge a walker toward its nearest neighbor. Clumping
   appears; no one wrote "make a clump."
2. **Give them lifespans** — respawn a walker after N frames. The image acquires
   turnover, and old marks become the past rather than the present.
3. **Tie alpha to age.** Now the drawing has a memory *gradient*, which is the
   closest thing a generative system has to a gesture.

Name it plainly: none of this is a picture *of* anything. It dramatizes
accumulation, decay, and crowding. That's the PROJECT 3 standard.

## 4 · Studio (~25 min)

Students work on **PROJECT 3 — Algorithmic Color Composition**, due Wednesday.

While circulating:

- Ask everyone to state their color rule out loud in one sentence. If they can't,
  that's the problem, not the code.
- Watch for palettes that are *lists* rather than *systems* — four colors chosen
  uniformly at random is a list. Weighting, or tying color to a state, makes it
  a system.
- Anyone stuck on "it doesn't look good": ask what the system currently
  dramatizes, and whether the fix is aesthetic or structural. It's almost always
  structural.
- Remind them the README must explain the palette logic — writing it usually
  exposes the missing rule.

## 5 · Exit (5 min)

*Where in your project does color report on a behavior rather than describe a
shape? If it doesn't yet, what state could it report on?* — two sentences in
their notes.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
