# LAB 10 — Mapping Without Message

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 12 (Wednesday)
**Tools:** p5.js + a CSV or JSON file
**Submission:** GitHub link to your sketch (include the data file)

---

## Purpose

This lab isolates the single operation at the center of all data work:
**mapping** — taking a number that meant one thing and letting it control
something else.

You will load a real dataset and map at least one of its columns onto a
parameter of a running system. You will then do something that will feel wrong:
**you will not explain it.** No title, no legend, no axis, no caption, no key.

Every previous lab gave you a constraint on your materials. This one constrains
your *rhetoric*. The question is what a mapping does before anyone tells you what
it means.

---

## Core Idea

You are not making a chart.

A chart is an argument with a legend attached. What you are building is one step
earlier: the raw act of letting external numbers drive a system's behavior.

`map(value, low, high, newLow, newHigh)` looks like a utility function. It is
actually the most consequential line in the file. It decides which differences in
the world become visible differences in the work — and, silently, which ones
don't.

One dataset. One mapping. No commentary.

---

## Restrictions

You **must use**:

- **Real external data** — a CSV or JSON file you did not invent, loaded with
  `loadTable()` or `loadJSON()` in `preload()`
- At least **one column mapped** to at least one parameter of your system
  (position, size, opacity, interval, density, rotation — your choice)
- A system that keeps running: the data drives *behavior*, not a static picture

You **may not use**:

- Titles, labels, legends, axes, tooltips, or captions
- Any text on the canvas that explains what is being shown
- Data you made up, or data with fewer than 50 rows
- More than **one** mapped column (save that for LAB 11)

If a viewer could read your sketch and correctly state what the data is about,
you have probably added something this lab asks you to withhold.

---

## Finding Data

Use anything real. Some free sources with no signup:

- **USGS earthquake feeds** — [live GeoJSON, updated continuously](https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php); magnitude, depth, and time are all directly mappable
- **Our World in Data** — [downloadable CSVs on almost any global indicator](https://ourworldindata.org/)
- **data.gov** — [US federal open data](https://data.gov/)
- **Your own logs** — steps, screen time, sleep, listening history. Small personal
  datasets often map more interestingly than large public ones, because you know
  what the numbers cost.

---

## Suggested System Prompts (Choose One or Invent Your Own)

- **One Column, One Parameter:** Map a single column to circle radius and let the
  rows play out over time, one per frame. Watch the shape of the distribution
  appear without ever plotting it.
- **Data as Weather:** Map a value to the *density* of marks rather than to their
  position. The dataset becomes a climate rather than a curve.
- **Sonified Row Reader:** Map one column to an interval in Tone.js and let the
  dataset set the pace. (Reuses LAB 9.)
- **Deliberate Loss:** Map a 10,000-row column onto 200 pixels of brightness.
  Most of the data cannot survive that. Build it anyway and look at what did.
- **Wrong on Purpose:** Map a column to a parameter it has no business
  controlling — file size to hue, timestamps to rotation. Note whether the result
  is meaningless or merely unfamiliar.

---

## Starter Template

```js
let table;
let rows = [];
let index = 0;

function preload() {
  // Any CSV with a header row. Swap in your own.
  table = loadTable("data.csv", "csv", "header");
}

function setup() {
  createCanvas(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
  background(200, 20, 12);

  // Pull one column out as numbers, discarding anything unparseable
  for (let r = 0; r < table.getRowCount(); r++) {
    let v = parseFloat(table.getString(r, "value"));   // <- your column name
    if (!isNaN(v)) rows.push(v);
  }
}

function draw() {
  if (rows.length === 0) return;

  // The whole lab lives in these three lines.
  let v = rows[index % rows.length];
  let lo = min(rows);
  let hi = max(rows);
  let size = map(v, lo, hi, 4, 90);      // <- the consequential decision

  fill(200, 70, 95, 40);
  ellipse(random(width), random(height), size);

  index++;
}
```

---

## Reflection (3–5 Sentences)

Answer briefly:

1. What did your mapping make visible, and what did it flatten? Name one
   distinction in the data that your system cannot show at all.
2. Did withholding the legend make the piece feel dishonest, or did it feel more
   honest than a chart would have? Sit with whichever answer you got.
3. `map()` needs a low and a high. Where did yours come from — the actual minimum
   and maximum, a round number, or something you chose because it looked better?
   What did that choice do?

---

## What This Lab Prepares You For

You have made **one** mapping. In **LAB 11 — Three Mappings, Same Data**, you
will make three from the same file, and discover that the dataset was never the
work. The mapping was.

Together these two labs prepare you for **PROJECT 6 — Data-Driven Expressive
System**.

---

## Technical Notes

**`preload()` matters.** Data loading is asynchronous. If you call `loadTable()`
in `setup()` your sketch will run before the file arrives and fail confusingly.
Load in `preload()`; p5 waits.

**Local files need a server.** Opening `index.html` directly from your hard drive
will block the data load for security reasons. Use the p5.js Web Editor, VS Code's
Live Server, or push to GitHub Pages — where your sketch is already published.

**Clean your numbers.** Real data has blanks, footnote markers, and text in
numeric columns. The `isNaN()` guard in the template is not decoration; expect to
need it.

---

*End of LAB 10*
