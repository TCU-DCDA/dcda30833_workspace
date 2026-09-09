# Week 11 — Interactive Audio Systems · Live-Coding Plan

**Mode:** Sound / Interaction · **MW, 80 min** · supports PROJECT 5 studio (Generative Sound / Sonified System)
**Where we work:** p5.js Web Editor with Tone.js, projected and audible.

> Double duty: multimodal mapping *and* PROJECT 5's in-class **System Autopsy**
> beat. PROJECT 5 is due Wednesday, so studio time is protected.

## Through-line (the one idea)

A sound system that responds is not the same as a sound system with a volume
knob. The question from Week 8 returns in a new material: **does the listener
enter the system, or operate it?**

And a second, specific to sound: when a system runs for minutes rather than
seconds, the design problem stops being *what happens* and becomes *what keeps
being worth hearing*.

## 0 · Open (5 min)

Play thirty seconds of a generative piece. Then play three minutes of it while
doing something else, and ask afterward what they noticed in minute three that
wasn't there in minute one. Duration is a design surface; most student sound
work is built for the first eight seconds.

## 1 · Live build A — "Interaction that changes the rules" (~15 min)

Start from Week 10's probability gate and wire the mouse to it two different
ways.

```js
let probability = 0.5, synth, gain;

function setup() {
  createCanvas(400, 400);
  gain = new Tone.Gain(0.8).toDestination();
  synth = new Tone.MembraneSynth().connect(gain);

  new Tone.Loop((t) => {
    if (Math.random() < probability) synth.triggerAttackRelease("C3", "16n", t);
  }, "8n").start(0);
}

function draw() {
  background(20);
  // (a) the control:   gain.gain.value = map(mouseY, 0, height, 0, 1);
  // (b) the entrance:  probability     = map(mouseX, 0, width, 0.02, 0.95);
}

function mousePressed() { Tone.start(); Tone.Transport.start(); }
```

Run (a) alone for a while, then (b) alone. Both are one line. Under (a) the
listener adjusts a finished thing; under (b) the listener is inside the rule that
decides whether events exist. Ask which one they would rather have made.

## 2 · System Autopsy — systems that run (~15 min)

PROJECT 5's required in-class beat. Take apart **two** as rule sets:

- **Reich, *Piano Phase*** — [Chen's visualization](https://www.chenalexander.com/Piano-Phase).
  Two identical figures, one drifting. Everything downstream is consequence.
  (We built this last week; now look at what it does over twenty minutes.)
- **Riley, *In C*** — [playable in the browser](https://teropa.info/in-c/).
  53 phrases, performers advance independently. Nobody decides the texture; the
  piece is different every time and recognizably itself every time.
- **Eno-lineage generative systems** — [generative.fm](https://generative.fm/),
  free and open-source, running indefinitely.

Ask of each: *what is the rule, and what does the rule leave undetermined?* Then
the one that matters for a two-minute requirement: **what makes this still worth
hearing after the novelty is gone?**

## 3 · Live build B — "Slow variables" (~15 min)

The answer to that question is usually a variable that moves slower than
attention does.

```js
let t = 0, synth;

function setup() {
  createCanvas(400, 400);
  synth = new Tone.Synth({
    envelope: { attack: 0.4, decay: 0.3, sustain: 0.2, release: 2.5 }
  }).toDestination();

  new Tone.Loop((time) => {
    // one slow, continuous variable governing several parameters at once
    let n = noise(t);
    if (n > 0.45) synth.triggerAttackRelease("C4", "2n", time);
  }, "2n").start(0);
}

function draw() {
  background(20);
  t += 0.002;                       // slower than it feels like it should be
  fill(200); noStroke();
  ellipse(width / 2, map(noise(t), 0, 1, height, 0), 20);
}

function mousePressed() { Tone.start(); Tone.Transport.start(); }
```

Add one at a time:

1. Let the same `noise(t)` drive envelope release *and* density — one underlying
   condition surfacing in two places reads as coherence.
2. Add a second slow variable at a different rate. Two slow cycles beating
   against each other is the entire structure of a lot of ambient music.
3. Slow `t` by a factor of ten and listen again. Most students' systems are ten
   times too fast.

## 4 · Studio (~25 min)

Students work on **PROJECT 5**, due Wednesday.

While circulating:

- Ask everyone to state their organizing principle out loud — phase, probability,
  or mapping. If they can't name it, that's the problem.
- **Make them listen for two full minutes without touching anything.** Nearly
  everyone will discover their system repeats sooner than they thought.
- If a piece has interaction, ask what it changes. Volume is a control; rules are
  an entrance.
- Check that the visual layer reports on state rather than decorating.

## 5 · Exit (5 min)

*Set a timer, listen to your system for three minutes, and write down the first
moment you got bored. What would have to change to move that moment later?*

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
