# LAB 9 — Rhythm Without Notes

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 10 (Wednesday)
**Tools:** p5.js + Tone.js
**Submission:** GitHub link to your sketch

---

## Purpose

This lab treats **rhythm as a system of time**, not as a sequence of notes.

You will build a sketch in which **pitch never changes** and everything
interesting happens in the *when*:

- interval (how much time passes between events)
- density (how many events occur in a span)
- probability (whether an event happens at all)
- phase (two patterns drifting against each other)
- silence (the rests are part of the pattern, not gaps in it)

LAB 8 held pitch still and varied the **shape** of a single sound. This lab holds
both pitch *and* shape still, and varies only **placement in time**. What is left
is rhythm in its bare form — and it turns out to be enough.

---

## Core Idea

You are not writing a beat.

You are designing a **system that decides when things happen**.

One sound. Many temporal structures.

A metronome is not rhythm; it is a clock. Rhythm begins the moment something is
*withheld* — when an expected event doesn't arrive, or arrives slightly late, or
belongs to a different cycle than the one you were counting. The interesting
material is the **relationship between events**, not the events.

---

## Restrictions

You **must use**:

- A **single unchanging sound** — one pitch, one envelope, one timbre
- Tone.js `Transport` and at least one `Tone.Loop` (or a sequence)
- Variation through **time only**:
    - interval or subdivision
    - probability of an event firing
    - density over time
    - phase between two or more loops
- A visual representation of the pattern in p5.js — the eye should be able to
  find what the ear is doing

You **may not use**:

- Melody, chords, or any pitch change
- More than one timbre or instrument
- Effects (reverb, delay, filters)
- Pre-recorded audio, samples, or drum loops
- Randomness applied to pitch or envelope

If someone can hum your sketch back to you, you have probably violated the
constraint.

---

## Suggested System Prompts (Choose One or Invent Your Own)

- **Probability Gate:** A steady grid of possible events, each firing only some
  of the time. Sweep the probability from 0.1 to 0.9 and find where "sparse"
  becomes "pattern" and where "pattern" becomes "wall."
- **Phase Drift:** Two loops with *almost* the same interval — say 0.5s and
  0.51s. They begin together, drift apart, and eventually realign. Nothing in
  the code changes; the relationship does all the work. (This is the Steve Reich
  move.)
- **Density Ramp:** Events per second mapped to time or to mouse position.
  Listen for the threshold where individual hits stop being countable and become
  a texture.
- **Silence as Structure:** Design the *rests* first. Decide where nothing
  happens, then let the sound fill what's left.
- **Nested Cycles:** One loop every 3 beats, another every 4. The combined
  pattern takes 12 beats to repeat — a structure neither loop contains.

---

## Starter Template

```js
let events = [];              // recent events, for the visual
let probability = 0.5;        // chance any given step fires

const PITCH = "C3";           // ONE pitch — never changes
let synth;
let started = false;

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  noStroke();

  synth = new Tone.MembraneSynth({
    envelope: { attack: 0.001, decay: 0.2, sustain: 0, release: 0.1 }
  }).toDestination();

  // The Transport is the clock. The Loop decides what happens on each tick.
  const loop = new Tone.Loop((time) => {
    if (Math.random() < probability) {          // probability as design
      synth.triggerAttackRelease(PITCH, "16n", time);
      events.push({ born: millis() });          // remember it, for drawing
    }
  }, "8n");                                     // one tick per eighth note

  loop.start(0);
  Tone.Transport.bpm.value = 120;
}

function draw() {
  background(300, 20, 12);

  if (!started) {
    fill(0, 0, 100);
    text("Click to start the clock", width / 2, height / 2);
    return;
  }

  // Each event is a mark that fades — the pattern becomes visible as history
  events = events.filter((e) => millis() - e.born < 4000);

  for (let e of events) {
    let age = (millis() - e.born) / 4000;       // 0 = new, 1 = gone
    let x = map(age, 0, 1, width, 0);           // scroll leftward through time
    fill(320, 70, 95, map(age, 0, 1, 90, 0));
    ellipse(x, height / 2, 14);
  }

  fill(0, 0, 100, 70);
  text(`probability: ${probability.toFixed(2)}  —  drag to change`,
       width / 2, height - 24);
}

function mousePressed() {
  Tone.start();                                 // browsers require a gesture
  Tone.Transport.start();
  started = true;
}

function mouseDragged() {
  probability = constrain(map(mouseX, 0, width, 0, 1), 0, 1);
}
```

---

## Reflection (3–5 Sentences)

Answer briefly:

1. At what probability (or density) did your pattern stop sounding like separate
   events and start sounding like a texture? Was that boundary sharp or gradual?
2. What did the silences do? Name one place where *nothing happening* was the
   most active part of the pattern.
3. Did you find a structure you did not design — something the interaction of
   your rules produced on its own?

---

## What This Lab Prepares You For

You now have both halves of the sound toolkit:

- **LAB 8:** the shape of a single sound in time (envelope)
- **LAB 9:** the placement of sounds in time (rhythm)

Next, **PROJECT 5 — Generative Sound / Sonified System** asks you to combine
them into a system that runs on its own and behaves like something, using sound
as the primary material rather than as accompaniment to a picture.

---

## Technical Notes

**Browser audio requires a gesture.** Nothing will sound until a click or key
press calls `Tone.start()`. The template handles this.

**Including Tone.js** — add to your `index.html`:

```html
<script src="https://unpkg.com/tone"></script>
```

**`Transport` vs. `draw()`.** p5's `draw()` runs on the browser's animation
frame, which is not accurate enough for audio. Tone.js schedules sound on its own
clock, which is why the loop callback receives a `time` argument — pass it to
`triggerAttackRelease()`. Use `draw()` for *seeing* the pattern, never for timing
it. This split — one clock for the eye, another for the ear — is worth
understanding; it is why browser music is built the way it is.

---

*End of LAB 9*
