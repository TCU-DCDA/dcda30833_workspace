# Week 3 — Randomness as Material · Live-Coding Plan

**Mode:** Image / Motion · **TR, 80 min** · scaffolds LAB 2 (Random Without Design) → LAB 3 (Controlled Randomness)
**Where we work:** p5.js Web Editor, projected. Build from a blank sketch — including the mistakes.

## Through-line (the one idea)

Last week was **pure rule** — deterministic, no chance. Today we hand decisions
to the machine. The question isn't "how do I make it random?" but **"what does
randomness reveal that rules can't — and what does it destroy?"** Randomness
*dramatizes* instability and surprise; constraint is what turns chaos into identity.

## 0 · Open (5 min)

Pull up last week's deterministic sketch. Ask: *"What if the machine decided,
not us?"* Have the room predict what will happen. Don't answer — build it.

## 1 · Live build A — "Let the machine roll" (15 min)

Build from blank, narrating each line; run constantly.

```js
function setup() { createCanvas(400, 400); }
function draw() {
  let x = random(width);
  let y = random(height);
  fill(random(255), random(255), random(255), 120);
  noStroke();
  ellipse(x, y, random(10, 120));   // chaos on every frame
}
```

Beats to hit live: run it and let it overwhelm; remove `background()` so it
accumulates; ask *"is this composed? who composed it?"* This **is** LAB 2
territory (Random Without Design).

## 2 · Discussion (5 min)

*How does pure chance feel compared to last week's rules? What's gained — and
what's lost when nothing is in control?*

## Aside · When the machine decides — seeding AI (~3 min, opportunistic)

Today the machine made choices for us (chance). Name the bigger version out
loud: **AI is another system that decides** — it generates moves you didn't,
and like `random()`, `noise()`, or data, it *pushes back*. Plant the stance now;
the full treatment is LAB 7 (Prompt as Material) and the course AI policy.

- **Our creative framing:** you don't outsource the thinking — you *curate* what
  the system offers and stay critical of it. *Discovery over expression*: the
  question is "what can this system reveal?", not "make me a thing."
- **The discipline (borrowed from WRIT 40363's AI guidelines):** keep nothing
  you can't explain; AI assists discovery, it doesn't replace the struggle —
  which is exactly why the *labs* are done by hand.

*Ask:* if chance and AI both make choices for you, what's the difference between
a result you **find** and a result you **accept without looking**?

## 3 · Live build B — "Tame it, one rule at a time" (20 min)

Reintroduce constraint incrementally — the heart of "probability as design":

```js
let palette = [color(20,90,90), color(210,80,90), color(50,85,95)];
function setup() { createCanvas(400,400); colorMode(HSB,360,100,100,100); noStroke(); }
function draw() {
  let c = random(palette);          // chance, but only from a chosen set
  fill(c);
  if (random() < 0.1) {             // probability as a design decision
    ellipse(random(width), random(height), random(10,40));
  }
}
```

Add one constraint at a time — fixed palette, then a probability gate, then
`map()`/`constrain()` — and watch chaos resolve into a recognizable system.
Tease `noise()` vs `random()` (smooth vs jittery) as next week's hook.

## 4 · Studio (25 min)

Students start **LAB 2 — Random Without Design**: pure, unfiltered chance, *no*
taming. The goal is to *experience* chaos, not fix it. Circulate; when someone
says "it's a mess," ask what single rule they'd add (that's LAB 3).

## 5 · Exit (5 min)

*Where did an accident look intentional? What one constraint would you add to
make the chaos feel designed?* — two sentences in their notes.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
