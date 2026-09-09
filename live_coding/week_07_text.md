# Week 7 — Text as Spatial Material · Live-Coding Plan

**Mode:** Text / Visual Language · **MW, 80 min** · scaffolds LAB 6 (Text as Object) → LAB 7 (Prompt as Material)
**Where we work:** p5.js Web Editor, projected. Build from a blank sketch — including the mistakes.

> This session carries the course's AI thread from *aside* to *practice*. The
> stance was planted in Week 3 ("the machine decides"); today it becomes a
> working method. LAB 6 is due Wednesday, LAB 7 the Monday after.

## Through-line (the one idea)

For six weeks a shape has been a shape. Today the shape is a **letter** — a form
that arrives already carrying meaning, and refuses to sit still as pure
geometry. The move is to make it sit still anyway. **What happens to a word when
you stop letting it speak?**

The test, from LAB 6: if a viewer couldn't read your word — if it were in a
script they'd never seen — would the piece still hold? If yes, form is doing the
work.

## 0 · Open (5 min)

Put a word on screen in a script nobody in the room reads — Devanagari, Georgian,
Hangul. Ask what they see. They'll describe rhythm, weight, density, symmetry.
Then put an English word up and ask the same question. Watch how much harder it
is: they can't stop reading it. That difficulty **is** the constraint LAB 6
imposes.

## 1 · Live build A — "The word as shape" (~15 min)

```js
let word = "system";   // pick ONE word — its meaning is not the point

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  noStroke();
}

function draw() {
  background(210, 15, 12);

  for (let i = 0; i < 40; i++) {
    push();
    translate(random(width), random(height));
    rotate(random(TWO_PI));
    textSize(random(8, 48));
    fill(0, 0, 100, random(20, 80));
    text(word, 0, 0);
    pop();
  }
}
```

Beats to hit live:

- Run it. At size 48 people read it; at size 8 they see texture. **Scale is the
  dial between reading and seeing** — the whole lab lives on that dial.
- `push()` / `pop()` and `translate()` before `rotate()` — get this wrong on
  purpose first. Rotating without translating spins everything around the origin,
  which is a genuinely useful mistake to see.
- Remove `background()`. The word accumulates into a field. Same lesson as last
  week's marks: density is the medium.
- Change `word` to a single letter. Less legible, more pattern. Ask whether the
  piece got worse.

## 2 · Discussion (5 min)

*At what point did it stop being language and start being texture? Did anyone
keep trying to read it — and does that resistance help the piece or fight it?*

Name the tradition here: concrete poetry made this exact bargain by hand
(Gomringer's *Silencio* is on the course site as a [live recreation](../sketches/concrete_poem.html)).
We're doing it with rules instead of a typesetter.

## 3 · Live build B — "One word, many states" (~15 min)

From scatter to **system**: transformation driven by position and time.

```js
let word = "system";

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  textAlign(CENTER, CENTER);
  noStroke();
}

function draw() {
  background(210, 15, 12);

  for (let row = 0; row < 12; row++) {
    let t = row / 11;                       // 0 at top, 1 at bottom
    push();
    translate(width / 2, 30 + row * 30);
    rotate(map(t, 0, 1, 0, 0.6) * sin(frameCount * 0.01));
    textSize(map(t, 0, 1, 28, 10));
    fill(0, 0, 100, map(t, 0, 1, 90, 15));
    text(word, 0, 0);
    pop();
  }
}
```

Add one rule at a time — this is **word decay**, one of LAB 6's prompts:

1. Let rotation accumulate down the column: the word degrades as it falls.
2. Map `textSize` to distance from the mouse — the word thickens where attention
   is. *Legibility becomes a behavior.*
3. Introduce `noise()` instead of `sin()` and compare. Both are ways of not
   deciding; they have different handwriting.

Say it plainly: this system **dramatizes** dissolution. Nobody wrote "make it
sad." The rules perform a state.

## 4 · Prompt as material — live, with the class (~15 min)

Open an AI assistant next to the editor and work in front of them. This is
LAB 7's method, demonstrated rather than described.

**First, the wrong way — on purpose.** Type: *"Make a pulsing mandala out of the
word 'system'."* Run whatever comes back. It will probably work, and it will be
nobody's discovery. Ask: *what did we just learn about the material?*

**Then the discipline.** Re-prompt with constraints only, never outcomes:

> "Use only `text()`, `translate()`, and `rotate()`. Vary by `frameCount`. Do not
> tell me what it should look like."

Iterate three times, live, responding to what comes back rather than restarting.
Points to land while doing it:

- **Prompt for constraints, not outcomes.** The moment you name the look, you've
  stopped discovering.
- **Generate more than you need; the creative act is selection.** Keep two of
  five, and say why out loud.
- **The Explanation Test:** delete any line you cannot explain. Do this live —
  find a line in the AI's output, ask the room what it does, and cut it if nobody
  can say.
- The AI pushes back like `random()` or `noise()` pushes back. It is another
  system that decides, and it has defaults and habits. Name one you notice.

Point them to [AI in This Course](../context/ai_policy.html) and
[Collaboration in Computer Art](../context/collaboration.html) for the full
framing: collaboration, not abdication.

## 5 · Studio (~20 min)

Students begin **LAB 6 — Text as Object** (due Wednesday) and, if they're ready,
**LAB 7 — Prompt as Material** (due Monday of Week 8).

While circulating:

- If a sketch reads like a caption or slogan, the constraint is broken. Ask them
  to apply the unreadable-script test.
- Watch for multiple words sneaking in. One word, one letter — that's the prison.
- For LAB 7: check that their prompt log shows *responses* to what the AI gave,
  not five independent restarts. Iteration is the assignment.

## 6 · Exit (5 min)

*Where did your word stop being readable — and did the piece get stronger or
weaker at that moment? For LAB 7: name one thing the AI did that you would not
have.* — two sentences in their notes.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
