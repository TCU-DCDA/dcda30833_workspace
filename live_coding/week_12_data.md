# Week 12 — Data as Poetic Constraint · Live-Coding Plan

**Mode:** Data / Mapping · **MW, 80 min** · scaffolds LAB 10 (Mapping Without Message) → LAB 11 (Three Mappings, Same Data)
**Where we work:** p5.js Web Editor, projected. Bring a CSV on screen before you write a line of code.

## Through-line (the one idea)

Data is the first material this semester with a **prior life**. Someone collected
it, for a reason, using categories they chose, leaving out whatever didn't fit.
By the time it reaches your sketch it has been shaped several times, and your
mapping is one more shaping — not the first.

The operative claim: **`map()` is the most consequential line in the file.** It
decides which differences in the world become visible differences in the work,
and silently, which ones don't.

## 0 · Open (5 min)

Open a raw CSV — not a chart, the actual file — and scroll it. Ask what it is
*about*. Then ask who decided what the columns would be, and what someone would
have had to do to get counted in it. Nothing has been visualized yet and the
critical work has already started.

## 1 · Live build A — "One column, one parameter" (~15 min)

```js
let table, values = [], i = 0;

function preload() {
  table = loadTable("data.csv", "csv", "header");   // in preload, always
}

function setup() {
  createCanvas(400, 400);
  background(20);
  noStroke();
  for (let r = 0; r < table.getRowCount(); r++) {
    let v = parseFloat(table.getString(r, "value"));
    if (!isNaN(v)) values.push(v);                  // real data has junk in it
  }
}

function draw() {
  let v = values[i % values.length];
  let size = map(v, min(values), max(values), 4, 90);
  fill(200, 120);
  ellipse(random(width), random(height), size);
  i++;
}
```

Beats to hit live:

- **Call `loadTable()` in `setup()` first, on purpose.** It fails, and it fails
  *confusingly* — an empty table, not an error. Then move it to `preload()`.
  This costs students hours if they meet it alone.
- **Delete the `isNaN` guard** and watch `NaN` propagate silently into invisible
  circles. Real data has footnote markers and blanks in numeric columns.
- Now change the mapping's output range from `4, 90` to `20, 30`. The dataset is
  identical and the differences have vanished. Then `0, 400` — now three outliers
  are the whole piece. **Nothing dishonest happened at either step.**

## 2 · Discussion (5 min)

*Which of those three versions was the true one?*

Sit in the silence. There isn't one. That is LAB 11, previewed — and it is the
course's data argument in a single question.

## 3 · Live build B — "The same numbers, somewhere else" (~20 min)

Take the identical array and drive something other than size.

1. **Temporal:** `value → interval` between events. The data stops being
   available at a glance; you have to wait for it.
2. **Density:** `value → how many marks`, not how big. Quantity becomes texture.
3. **Relational:** `value → attraction strength` between particles. Now the data
   governs behavior *between* things rather than a property of one thing.
4. **Sonic:** hand it to last week's Tone.Loop as an interval. Two units meet.

Do at least two of these live from the same array, and put them side by side.
Then say the quiet part:

> On its own, a value is just itself. The moment you `map()` it against the rest
> of the column, it becomes a **position in a distribution** — high *for this
> dataset*, unusual *compared to these others*. That conversion is what makes it
> drawable, and it is where most of the persuasion happens, long before anyone
> writes a caption.

## 4 · Studio (~25 min)

Students begin **LAB 10 — Mapping Without Message** (due Wednesday): real data,
one column, one mapping, and **no title, legend, axis, or caption.**

While circulating:

- The hardest part is the withholding. Expect people to add a label reflexively.
  Ask them what the label is doing that the system can't.
- Push toward small, personal datasets — steps, sleep, listening history. They
  map more interestingly because the student knows what the numbers cost.
- Data loading from a local file needs a server. Point at the Web Editor or their
  Pages URL.
- Anyone who finishes early: start LAB 11 by changing only the output range.

## 5 · Exit (5 min)

*Name one distinction that exists in your dataset and cannot survive your
mapping. Then say whether you mind.* — two sentences.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
