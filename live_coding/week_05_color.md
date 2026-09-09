# Week 5 — Color as Structure · Live-Coding Plan

**Mode:** Image / Color · **MW, 80 min** · scaffolds LAB 4 (One-Hue World) → LAB 5 (Palette as Prison)
**Where we work:** p5.js Web Editor, projected. Build from a blank sketch — including the mistakes.

## Through-line (the one idea)

Week 3 handed decisions to chance; Week 4 gave chance a rulebook. Today the
rulebook is **color** — and the claim is that color is not applied to a system
after the fact. It **is** the system. A single hue, varied only in value,
saturation, and opacity, will produce more depth than a free palette does,
because the constraint forces the variation somewhere else. **What can one
color do that a hundred can't?**

## 0 · Open (5 min)

Project two of last week's PROJECT 2 sketches side by side and ask the room to
describe them *without naming a color*. Watch how fast the vocabulary runs out —
"bright," "heavy," "washed out." Those are value and saturation words, not hue
words. That's the whole session in one exchange. Don't explain it yet; build it.

## 1 · Live build A — "One hue, many states" (~15 min)

Build from blank. The first move is the important one — switch color modes and
say why out loud.

```js
let hueValue = 210;   // pick ONE hue. We are never allowed to change it.

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);   // hue is now a locked variable
  noStroke();
}

function draw() {
  background(hueValue, 20, 15, 20);     // soft trail, same hue

  fill(hueValue, random(40, 100), random(30, 100), random(30, 90));
  ellipse(random(width), random(height), random(10, 60));
}
```

Beats to hit live:

- Run it. Ask the room to name the mood *before* you say anything.
- **Break it deliberately:** change `hueValue` mid-run to 30. Same system,
  entirely different world. The structure didn't move; the temperature did.
- Freeze saturation at 100 — it goes garish and flat. Freeze brightness instead —
  it goes muddy. Neither alone carries the image. *Value does the drawing;
  saturation does the mood.*
- Drop the `background()` trail and let it accumulate. Depth appears from
  overlap and alpha, not from hue.

This is **LAB 4** territory exactly.

## 2 · Discussion (5 min)

*Which variable was doing the work — brightness, saturation, or opacity? With
hue locked, where did your choices go instead?*

Push on the second question. Constraint doesn't remove decisions; it relocates
them. That is the course's argument about constraint, stated in color.

## 3 · Live build B — "The palette as prison" (~20 min)

Open the cell door slightly: from one hue to a fixed set. The point is that the
palette is a **population**, and rules decide who shows up.

```js
let palette = [];

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  palette = [
    color(20, 90, 90),
    color(210, 80, 90),
    color(50, 85, 95),
    color(0, 0, 100)
  ];
  background(palette[0]);
}

function draw() {
  fill(random(palette));                 // chance, but only from the prison
  ellipse(random(width), random(height), random(10, 60));
}
```

Add one rule at a time and re-run after each:

1. **Weight it.** Replace `random(palette)` with a probability gate so one color
   appears 70% of the time and the rest are rare. The system acquires a
   *dominant* and an *accent* — which is to say, it acquires an identity.
2. **Tie color to behavior**, not position: `if (d < 40) fill(palette[2])`, where
   `d` is distance from the mouse or the center. Color now reports on a state
   rather than decorating one.
3. **Let it overdraw.** Low alpha plus repetition builds intensity that no single
   palette entry contains. The palette has four colors; the canvas shows dozens.

Ask while it runs: *the palette never changed — so where did the new colors come
from?* (Layering. The system exceeds its own materials.)

## 4 · Studio (~25 min)

Students begin **LAB 4 — One-Hue World**, hue locked from the first line.

While circulating:

- Anyone whose sketch "feels colorful" has broken the constraint. Have them find
  the line where a second hue got in.
- Watch for hand-composition — placing shapes to look good. Redirect to the rule
  that would place them.
- When someone's one-hue sketch is already working, don't let them add a color.
  Have them add a *behavior* instead. That's the LAB 5 move.

## 5 · Exit (5 min)

*Name one thing your sketch does that you could not have planned. Then name the
constraint that made it possible.* — two sentences in their notes.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
