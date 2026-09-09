# Week 10 — Rhythm & Sonification · Live-Coding Plan

**Mode:** Sound / Pattern · **MW, 80 min** · scaffolds LAB 9 (Rhythm Without Notes)
**Where we work:** p5.js Web Editor with Tone.js, projected and audible.

## Through-line (the one idea)

Last week held pitch still and shaped a single sound. Today we hold the sound
itself still — one pitch, one envelope, one timbre — and vary only **when**.

A metronome is not rhythm; it is a clock. **Rhythm begins the moment something
is withheld.** The material is not the events but the relationships between
them, and the most active element in a good pattern is usually the silence.

## 0 · Open (5 min)

Play a perfectly regular pulse for fifteen seconds. Watch the room stop hearing
it. Then remove every fourth hit. Attention comes back immediately. Ask what
changed — the sound didn't; the *expectation* did.

## 1 · Live build A — "The clock and the gate" (~15 min)

```js
let probability = 0.5;
let synth;

function setup() {
  createCanvas(400, 400);
  synth = new Tone.MembraneSynth({
    envelope: { attack: 0.001, decay: 0.2, sustain: 0, release: 0.1 }
  }).toDestination();

  const loop = new Tone.Loop((time) => {
    if (Math.random() < probability) {
      synth.triggerAttackRelease("C3", "16n", time);   // pass `time`, always
    }
  }, "8n");

  loop.start(0);
  Tone.Transport.bpm.value = 120;
}

function mousePressed() {
  Tone.start();
  Tone.Transport.start();
}
```

Beats to hit live:

- **Sweep `probability` from 1.0 down to 0.1**, live, and have the room call out
  where it stops being a beat and starts being an event. That threshold is the
  whole lab.
- At 1.0 it is a machine. At 0.5 it is a drummer. At 0.15 it is a dripping tap.
  Nothing changed but a number.
- **Drop the `time` argument** on purpose — `triggerAttackRelease("C3", "16n")`.
  It still plays, and it is subtly, audibly worse: the timing now depends on when
  JavaScript happens to get around to it. This is the single most important
  technical point of the sound unit, and it is only convincing when heard.

## 2 · Discussion (5 min)

*Where was the boundary between "pattern" and "texture"? Did everyone put it in
the same place?*

Name the split explicitly: `draw()` runs on the animation frame and is for
**seeing**; Tone's Transport is a separate clock and is for **hearing**. Browser
music is built this way because human ears detect timing errors an order of
magnitude smaller than eyes do.

## 3 · Live build B — "Two clocks, slightly disagreeing" (~20 min)

The Reich move, in nine lines.

```js
let a, b, synth;

function setup() {
  createCanvas(400, 400);
  synth = new Tone.MembraneSynth().toDestination();

  a = new Tone.Loop((t) => synth.triggerAttackRelease("C3", "32n", t), 0.50);
  b = new Tone.Loop((t) => synth.triggerAttackRelease("C3", "32n", t), 0.51);

  a.start(0);
  b.start(0);
}

function mousePressed() { Tone.start(); Tone.Transport.start(); }
```

Let it run for a full two minutes while you talk over it. The two loops begin
together, blur, separate into a gallop, drift into an even double-time, and
eventually realign. **No code executes to make any of that happen.** It is a
consequence of 0.01 seconds of disagreement.

Then add:

1. **Nested cycles** — one loop at "4n", another at "4n." (dotted), or intervals
   of 3 and 4 beats. The combined pattern takes 12 to repeat, and neither loop
   contains it.
2. **A visual** — mark each hit and let it scroll or fade, so students can *see*
   the phase relationship they are hearing. This is what LAB 9 asks for.
3. **Silence as structure** — design the rests first: build a 16-step array of
   `true`/`false` where you place the *falses* deliberately.

## 4 · Studio (~25 min)

Students begin **LAB 9 — Rhythm Without Notes** (due Wednesday).

While circulating:

- If you can hum it, the constraint is broken — pitch has crept in.
- Push anyone with a working steady pattern toward *drift* or *probability*. A
  loop that repeats exactly is a clock, and they already have one.
- Check that `time` is being passed through to `triggerAttackRelease`.

## 5 · Exit (5 min)

*At what density did your pattern stop being countable? Name one moment where
nothing happening was the most active part.* — two sentences.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
