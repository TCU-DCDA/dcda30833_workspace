# Week 8 — Interactive Poetry Systems · Live-Coding Plan

**Mode:** Text / Interaction · **MW, 80 min** · supports PROJECT 4 studio (Animated & Interactive Concrete Poem)
**Where we work:** p5.js Web Editor, projected. Build from a blank sketch — including the mistakes.

> This session does double duty: it introduces interaction as a system input
> *and* carries PROJECT 4's in-class **System Autopsy** beat. **LAB 7 is due
> today**; PROJECT 4 closes the first half of the course and is due Wednesday.

## Through-line (the one idea)

Interaction is not a control panel. A button that changes a color leaves the
system exactly as it was — it only repaints the surface. The question worth
asking is **does the reader enter the system, or just operate it?** A concrete
poem that *responds* dramatizes a relationship: attention, avoidance,
insistence, refusal. Today we build text that has an attitude toward being read.

## 0 · Open (5 min)

Show two versions of the same sketch: one where the mouse changes the text color,
one where the text *flees* the mouse. Ask which one is about something. Both use
one line of mouse code. The difference is whether the interaction is wired to a
property or to a **behavior**.

## 1 · Live build A — "The word notices you" (~15 min)

```js
let word = "attention";

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  noStroke();
}

function draw() {
  background(210, 15, 12);

  for (let i = 0; i < 30; i++) {
    let x = (i % 6) * 70 + 50;
    let y = floor(i / 6) * 70 + 60;

    let d = dist(mouseX, mouseY, x, y);
    let near = map(constrain(d, 0, 160), 0, 160, 1, 0);   // 1 = close, 0 = far

    push();
    translate(x, y);
    rotate(near * 0.8);                    // it flinches
    textSize(map(near, 0, 1, 12, 26));
    fill(0, 0, 100, map(near, 0, 1, 25, 100));
    text(word, 0, 0);
    pop();
  }
}
```

Beats to hit live:

- Run it and move slowly. The field responds *locally* — proximity is the input,
  not clicking. Continuous input reads as relationship; discrete input reads as
  command.
- Invert `near` so the word shrinks and fades as you approach. Same code, opposite
  temperament: now it's evasive rather than eager. **One sign flip changes what
  the poem is about.**
- Add a lag: store a `current` size that eases toward the target. Hesitation
  appears, and hesitation is a state no static poem can hold.

## 2 · System Autopsy — text that behaves (~15 min)

PROJECT 4's required in-class beat. Take apart **two** of these together as rule
sets, not as images:

- **Gomringer, *Silencio* (1954)** — [live kinetic recreation](../sketches/concrete_poem.html).
  The word repeated into a frame around a gap. The hole is the poem; the
  arrangement *is* the content.
- **bpNichol, *First Screening* (1984)** — [preserved at vispo.com](https://vispo.com/bp/introduction.htm),
  with the original BASIC source and a JavaScript port you can read. Kinetic
  poems from 1984, in code students can actually open.
- **Allison Parrish** — [decontextualize.com](https://www.decontextualize.com/):
  the poem as the output of a procedure.

Ask of each: *What rule moves the text? Where is it working as shape and where as
readable language?* Then the one that matters most for this project:

> **What does the reader's action actually change — the system, or only the
> surface?**

Hold Nichol up against build A. In 1984 the constraint was Apple BASIC; the move
is identical.

## 3 · Live build B — "The reader is inside the system" (~15 min)

Interaction that alters the rules, not the paint.

```js
let word = "erosion";
let letters = [];

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  textSize(28);
  noStroke();
  for (let i = 0; i < word.length; i++) {
    letters.push({ ch: word[i], x: 60 + i * 40, y: height / 2, life: 100 });
  }
}

function draw() {
  background(210, 15, 12, 20);

  for (let L of letters) {
    let d = dist(mouseX, mouseY, L.x, L.y);
    if (d < 40) L.life -= 1.5;             // reading wears it away

    if (L.life > 0) {
      fill(0, 0, 100, L.life);
      text(L.ch, L.x, L.y + random(-1, 1) * (100 - L.life) * 0.1);
    }
  }
}
```

Add one rule at a time:

1. **Let it recover** when unattended — now neglect and attention are both
   forces, and the poem has a metabolism.
2. **Let a dead letter respawn elsewhere.** The word survives but is no longer
   itself; identity becomes a question the system asks. (That's Week 14's LAB 12
   in miniature — plant it.)
3. **Remove the interaction entirely** and run it. If the piece still says
   something, interaction was decoration. If it collapses, interaction was
   structural. Either answer is useful; the point is to *test* it.

Say it plainly: nobody wrote "make it about loss." The rules perform erosion, and
the reader is the agent of it. That is the PROJECT 4 standard.

## 4 · Studio (~25 min)

Students work on **PROJECT 4 — Animated & Interactive Concrete Poem**, due
Wednesday. This one closes the first half of the course.

While circulating:

- Ask each student: *what does the reader's action change?* If the answer is a
  color or a size, push for a rule instead.
- Watch for animation that is merely decorative — motion that could stop without
  the piece losing anything. Ask what state the motion dramatizes.
- Anyone using AI-generated text from LAB 7 needs their prompt log and citation
  in the repo. The [AI policy](../context/ai_policy.html) applies.
- Remind them the README explains the rule system. If they can't state the rule
  in a sentence, the system isn't finished.

## 5 · Exit (5 min)

*Turn off the interaction in your piece and run it. What was lost? If nothing
was, what would you have to change for the reader to matter?* — two sentences in
their notes.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
