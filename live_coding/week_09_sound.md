# Week 9 — Sound as Expressive System · Live-Coding Plan

**Mode:** Sound / Time · **MW, 80 min** · scaffolds LAB 8 (Envelope Only)
**Where we work:** p5.js Web Editor with Tone.js, projected and *audible*. Build from a blank sketch — including the mistakes.

> First session of the second half. The medium changes; the method does not.

## Through-line (the one idea)

For eight weeks the work has been available all at once — you look at an image
and it is there. Sound is only ever available **now**. That single difference
reorganizes everything: duration stops being a container and becomes the
material.

Today's claim is narrower and more useful: **the note is not the expression. The
envelope is.** A plucked string and a bowed string can play the same pitch. What
makes one feel sharp and the other patient is entirely how the sound *enters and
leaves*.

## 0 · Open (5 min)

Play two sounds at the same pitch — one with a 1ms attack, one with a 2-second
attack. Ask the room to describe them. Every word offered will be about
character, not pitch. Write a few on the board; they are the vocabulary for the
rest of the unit.

## 1 · Live build A — "One note, and the browser's permission" (~15 min)

```js
let synth;

function setup() {
  createCanvas(400, 400);
  background(20);
  synth = new Tone.Synth().toDestination();
  textAlign(CENTER, CENTER);
  fill(255);
  text("click", width / 2, height / 2);
}

function mousePressed() {
  Tone.start();                              // browsers demand a gesture
  synth.triggerAttackRelease("C4", "8n");    // one note
}
```

Beats to hit live:

- **Run it before adding `Tone.start()`.** Nothing happens and the console
  complains. Show the error, read it aloud, then fix it. Every student will hit
  this in the lab; better they see it here than alone at midnight.
- Change only `"8n"` to `"2n"` to `"4m"`. Same note, three different objects.
- Now open the envelope and change one parameter at a time:

```js
synth = new Tone.Synth({
  oscillator: { type: "sine" },
  envelope: { attack: 0.001, decay: 0.2, sustain: 0, release: 0.1 }
}).toDestination();
```

  Take `attack` from 0.001 to 1.5 in steps, re-triggering each time. Percussion
  becomes breath. Nothing about the pitch has moved.
- Set `sustain: 1` and a long `release`. The sound will not stop. Let that be
  uncomfortable for a few seconds — sustain is the parameter that most obviously
  makes a sound into a *presence* rather than an event.

## 2 · Discussion (5 min)

*Which parameter changed the feeling most? Was it the one you expected?*

Then the connection backward: this is LAB 4 again. One hue, many states → one
pitch, many envelopes. Same constraint logic, different sense.

## 3 · Live build B — "The mouse as sculptor" (~20 min)

Make the envelope visible, then make it interactive.

```js
let synth;
let env = { attack: 0.1, decay: 0.2, sustain: 0.5, release: 0.8 };

function setup() {
  createCanvas(400, 400);
  synth = new Tone.Synth({ envelope: env }).toDestination();
  noFill();
}

function draw() {
  background(20);
  stroke(120, 200, 255);
  strokeWeight(2);

  // the ADSR shape, drawn — the eye gets what the ear is doing
  let total = env.attack + env.decay + 0.5 + env.release;
  let x0 = 40, w = width - 80, top = 120, base = 300;
  let ax = x0 + (env.attack / total) * w;
  let dx = ax + (env.decay / total) * w;
  let sx = dx + (0.5 / total) * w;
  let rx = sx + (env.release / total) * w;
  let sy = base - env.sustain * (base - top);

  beginShape();
  vertex(x0, base); vertex(ax, top); vertex(dx, sy); vertex(sx, sy); vertex(rx, base);
  endShape();
}

function mouseMoved() {
  env.attack  = map(mouseX, 0, width, 0.001, 1.5);
  env.release = map(mouseY, 0, height, 0.05, 3.0);
}

function mousePressed() {
  Tone.start();
  synth.envelope.attack = env.attack;
  synth.envelope.release = env.release;
  synth.triggerAttackRelease("C4", "2n");
}
```

Add one thing at a time:

1. **Forget to copy `env` onto the synth before triggering** — do this on
   purpose. The drawing changes and the sound doesn't. A perfect small lesson in
   the difference between a *representation* of state and the state itself.
2. Map the *y* axis to `sustain` instead and hear how differently the canvas
   divides.
3. Trigger on a timer rather than a click, so the same envelope repeats and can
   be compared against itself.

## 4 · Studio (~25 min)

Students begin **LAB 8 — Envelope Only** (due Wednesday): one pitch, never
changed, all variation in the envelope.

While circulating:

- If it "sounds musical," the constraint is broken. Look for a second pitch.
- Encourage the [Sound Design cheat sheet](../theory_sheets/sound_design_cheatsheet.html).
- The most common stall is not hearing anything. Nine times in ten it is
  `Tone.start()`, a muted tab, or a synth built before the click.

## 5 · Exit (5 min)

*Describe your sound in three words, none of which can be a pitch or a note name.
Then name the envelope parameter that earned each word.* — two sentences.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
