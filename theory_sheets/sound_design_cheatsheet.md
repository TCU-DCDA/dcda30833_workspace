# 🎵 Sound Design Cheat Sheet for Creative Coding (Tone.js Edition)

A practical reference for students working with sound in the browser using Tone.js.

## 1. Core Sound Concepts

### Frequency (Pitch)
- Measured in Hz (cycles per second).
- Low frequency = low pitch; high frequency = high pitch.
- Reference: A4 = 440 Hz.

### Amplitude (Loudness)
- Loudness represented as gain or decibels (dB).
- 0 dB = maximum; -6 dB or lower is safer.

### Waveforms (Oscillator Types)
- sine – smooth, pure
- square – hollow, buzzy
- sawtooth – bright, harsh
- triangle – soft, mellow

## 2. Envelopes (ADSR)

ADSR = Attack, Decay, Sustain, Release.

```js
const synth = new Tone.Synth({
  envelope: {
    attack: 0.2,
    decay: 0.1,
    sustain: 0.5,
    release: 0.8
  }
}).toDestination();
```

## 3. Filters (Tone Shaping)

- lowpass – muffles highs
- highpass – thins lows
- bandpass – isolates a band
- notch – removes a narrow band

```js
const filter = new Tone.Filter(800, "lowpass").toDestination();
const synth = new Tone.Synth().connect(filter);
```

## 4. Rhythm & Timing

### BPM (Tempo)
- Beats per minute; 120 BPM is common.

### Subdivisions
- "4n" = quarter note
- "8n" = eighth note
- "16n" = sixteenth note

```js
Tone.Transport.bpm.value = 120;

Tone.Transport.scheduleRepeat((time) => {
  synth.triggerAttackRelease("C4", "8n", time);
}, "4n");
```

## 5. Scales & Harmony (Minimal Music Theory)

### Major Scale Pattern
Whole–Whole–Half–Whole–Whole–Whole–Half

### Minor Scale Pattern
Whole–Half–Whole–Whole–Half–Whole–Whole

### Useful Beginner Scales
- Pentatonic major (safe, bright)
- Pentatonic minor (emotional)
- Blues scale (expressive)

## 6. Mapping Data to Sound

Common mappings:

| Data | Sound Parameter |
|------|-----------------|
| number | frequency |
| category | instrument/timbre |
| range | amplitude or filter cutoff |
| time series | rhythmic pattern |

```js
const value = 0.7;
const freq = Tone.Frequency(200 + value * 600, "hz");
synth.triggerAttackRelease(freq, "8n");
```

## 7. Tone.js Building Blocks

### Synth
```js
new Tone.Synth()
```

### PolySynth
```js
new Tone.PolySynth(Tone.Synth)
```

### Sampler
```js
new Tone.Sampler({...})
```

### Effects Chain
```js
synth.chain(filter, reverb, Tone.Destination);
```

## 8. Interaction Patterns (p5.js + Tone.js)

Tone.js must be started by a user gesture:

```js
function mousePressed() {
  Tone.start();
  console.log("audio ready");
}
```

Common mappings:
- Mouse position → pitch
- Drag → filter sweep
- Click → note trigger
- frameCount → rhythm

## 9. Sound Design Strategies

### For warm sounds:
- sine or triangle wave
- lowpass filter
- longer attack

### For punchy sounds:
- saw or square wave
- short attack/decay

### For ambient pads:
- long attack & release
- reverb
- noise + filters

### For generative melodies:
- choose a scale
- randomly pick notes from it
- vary rhythm with "8n"/"16n"

## 10. Starter Sound Recipes

### Soft Pad
```js
const synth = new Tone.Synth({
  oscillator: { type: "sine" },
  envelope: { attack: 1.2, release: 2 }
});
```

### Lead Synth
```js
const synth = new Tone.Synth({
  oscillator: { type: "sawtooth" },
  envelope: { attack: 0.01, decay: 0.2, sustain: 0.4, release: 0.3 }
});
```

### Bass
```js
const synth = new Tone.MonoSynth({
  oscillator: { type: "square" },
  filterEnvelope: { baseFrequency: 50, octaves: 2 }
});
```

## 11. Sound Thinking Prompts

- What emotion should the sound carry?
- Should it evolve slowly or quickly?
- Is the sound warm or bright?
- Should it react to data or gestures?
- How do multiple sounds balance each other?

## 12. Teaching Metaphors

- Waveforms are flavors.
- Envelopes tell sound how to move.
- Filters are audio sunglasses.
- Rhythm = timed events.
- Scales are safe containers for randomness.
