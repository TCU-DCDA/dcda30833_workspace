# LAB 8 — Envelope Only

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 9 (Thursday)
**Tools:** p5.js + Tone.js
**Submission:** GitHub link to your sketch

---

## Purpose

This lab introduces **sound as an expressive system**, not a soundtrack.

You will build a sketch that uses **only one pitch**, with all variation coming from:

- attack (how quickly the sound begins)
- decay (how quickly it falls from peak)
- sustain (the held level)
- release (how it fades after you let go)

By stripping away melody, rhythm, and harmony, you will discover how much **character, motion, and emotion** can emerge from a single note shaped differently over time.

This is the sonic equivalent of Lab 4's one-hue constraint: one frequency, many envelopes.

---

## Core Idea

You are not composing a *melody*.

You are designing a **sound behavior system**.

One pitch. Many shapes.

The envelope *is* the expression. A plucked string and a bowed string can play the same note—what makes one feel sharp and the other feel gentle is the envelope. How a sound moves through time matters more than what note it plays.

---

## Restrictions

You **must use**:

- A **single pitch only** (choose one and never change it)
- Variation through envelope parameters:
    - attack
    - decay
    - sustain
    - release
- At least one form of interaction or time-based change
- Tone.js for sound synthesis

You **may not use**:

- Multiple pitches or melodies
- Rhythm patterns or sequenced timing
- Effects (reverb, delay, filters)
- Randomness applied to pitch
- Pre-recorded audio samples

If your sketch "sounds musical," you have probably violated the constraint.

---

## Suggested System Prompts (Choose One or Invent Your Own)

- **Breath:** A sound that inhales (slow attack) and exhales (long release). Can you make it feel like breathing?
- **Strike vs. Bow:** Create two versions of the same note—one that feels percussive (short attack, no sustain) and one that feels sustained (slow attack, high sustain).
- **Emotional Arc:** Using only envelope, make a sound that transitions from anxious (sharp, quick) to calm (soft, slow).
- **Mouse as Sculptor:** Map mouse position to envelope parameters. Horizontal controls attack, vertical controls release.
- **Fade Study:** A sound that exists only in its release—nearly instant attack, but a release so long the sound becomes a presence.

---

## Starter Template

```js
let synth;
let currentEnvelope = {
  attack: 0.1,
  decay: 0.2,
  sustain: 0.5,
  release: 0.8
};

const PITCH = "C4"; // ONE pitch — never change this

function setup() {
  createCanvas(400, 400);

  // Tone.js synth with envelope control
  synth = new Tone.Synth({
    oscillator: { type: "sine" },
    envelope: currentEnvelope
  }).toDestination();

  textAlign(CENTER, CENTER);
  textSize(14);
}

function draw() {
  background(30);

  // Visualize current envelope shape
  drawEnvelopeShape();

  // Display current values
  fill(255);
  text("Click to trigger sound", width/2, 30);
  text(`Attack: ${currentEnvelope.attack.toFixed(2)}`, width/2, height - 80);
  text(`Decay: ${currentEnvelope.decay.toFixed(2)}`, width/2, height - 60);
  text(`Sustain: ${currentEnvelope.sustain.toFixed(2)}`, width/2, height - 40);
  text(`Release: ${currentEnvelope.release.toFixed(2)}`, width/2, height - 20);
}

function drawEnvelopeShape() {
  // Simple visualization of ADSR shape
  let startX = 50;
  let endX = width - 50;
  let baseY = height / 2 + 50;
  let peakY = height / 2 - 50;

  stroke(100, 200, 255);
  strokeWeight(2);
  noFill();

  let a = currentEnvelope.attack;
  let d = currentEnvelope.decay;
  let s = currentEnvelope.sustain;
  let r = currentEnvelope.release;

  let total = a + d + 0.5 + r; // normalize timing
  let w = endX - startX;

  let attackEnd = startX + (a / total) * w;
  let decayEnd = attackEnd + (d / total) * w;
  let sustainEnd = decayEnd + (0.5 / total) * w;
  let releaseEnd = sustainEnd + (r / total) * w;

  let sustainY = baseY - (peakY - baseY) * (s - 1);

  beginShape();
  vertex(startX, baseY);                    // start at zero
  vertex(attackEnd, peakY);                 // attack to peak
  vertex(decayEnd, sustainY);               // decay to sustain level
  vertex(sustainEnd, sustainY);             // hold sustain
  vertex(releaseEnd, baseY);                // release to zero
  endShape();
}

function mousePressed() {
  // Start audio context (required by browsers)
  Tone.start();

  // Update synth envelope before playing
  synth.envelope.attack = currentEnvelope.attack;
  synth.envelope.decay = currentEnvelope.decay;
  synth.envelope.sustain = currentEnvelope.sustain;
  synth.envelope.release = currentEnvelope.release;

  // Trigger the ONE note
  synth.triggerAttackRelease(PITCH, "2n");
}

function mouseMoved() {
  // Example: map mouse to envelope parameters
  // Modify this to explore different mappings

  currentEnvelope.attack = map(mouseX, 0, width, 0.01, 1.5);
  currentEnvelope.release = map(mouseY, 0, height, 0.1, 3.0);
}
```

---

## Reflection (3–5 Sentences)

Answer briefly:

1. What did restricting pitch remove from your decision-making?
2. Which envelope parameter had the most dramatic effect on how the sound *felt*?
3. Did the constraint make sound design feel more limited or more focused? Why?

---

## What This Lab Prepares You For

Next, in **LAB 9 — Rhythm Without Notes**, you will shift focus from:

- **envelope shape**
- to **temporal pattern**

You will discover that rhythm is a system of time, not a sequence of melodies. Together, these labs build toward **PROJECT 5 — Generative Sound / Sonified System**, where you will combine envelope, rhythm, and interaction into a coherent sonic system.

---

## Technical Notes

**Browser Audio Requirement:** Browsers require a user gesture (click, key press) before audio can play. The starter template handles this with `Tone.start()` in `mousePressed()`.

**Including Tone.js:** Add this to your `index.html`:

```html
<script src="https://unpkg.com/tone"></script>
```

---

*End of LAB 8*
