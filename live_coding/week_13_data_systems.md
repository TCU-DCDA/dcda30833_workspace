# Week 13 — Data-Driven Systems · Live-Coding Plan

**Mode:** Data / Emergence · **MW, 80 min** · supports PROJECT 6 studio (Data-Driven Expressive System)
**Where we work:** p5.js Web Editor, projected.

> Double duty: data as *force* **and** PROJECT 6's in-class **System Autopsy**
> beat. **LAB 11 is due today**; PROJECT 6 is due Wednesday.

## Through-line (the one idea)

Last week data set properties — a size, an interval, a density. Today it sets
**relationships**: how strongly things attract, when a threshold trips, what
spreads to what.

The difference matters because a system driven by relationships produces
behavior nobody wrote down. That is the last stop on the course's argument about
emergence, and data is where it stops being only formal.

## 0 · Open (5 min)

Collect LAB 11's answers: show two students' three-mapping sets side by side and
ask the room to guess which dataset each came from. They can't, and both are
honest. Ten minutes of the term's most useful discomfort.

## 1 · Live build A — "Data as force" (~15 min)

```js
let values = [], nodes = [];

function setup() {
  createCanvas(400, 400);
  noStroke();
  // pretend `values` came from a CSV column, normalized 0–1
  for (let i = 0; i < 60; i++) {
    values.push(random());
    nodes.push({ x: random(width), y: random(height), v: values[i] });
  }
}

function draw() {
  background(20, 30);

  for (let n of nodes) {
    for (let m of nodes) {
      if (n === m) continue;
      let d = dist(n.x, n.y, m.x, m.y);
      if (d < 90) {
        // the DATA decides how strongly these two pull on each other
        let pull = (n.v + m.v) * 0.02;
        n.x += (m.x - n.x) * pull * 0.01;
        n.y += (m.y - n.y) * pull * 0.01;
      }
    }
    fill(200, 180);
    ellipse(n.x, n.y, 6 + n.v * 10);
  }
}
```

Beats to hit live:

- Run it. Clusters form. **Nobody wrote "make a cluster."** The distribution in
  the data is now legible as a spatial behavior rather than as a shape.
- Flip the sign of `pull` — repulsion. The same data, the same rule, an opposite
  world.
- Replace `random()` with a real column and watch the structure change. Then
  shuffle the column and run again: if it looks the same, the data was never
  doing the work. **That is a test worth teaching.**

## 2 · System Autopsy — data with stakes (~15 min)

PROJECT 6's required in-class beat. Take apart **two**:

- **W. E. B. Du Bois, *Data Portraits* (1900)** —
  [the charts at the Library of Congress](https://www.loc.gov/pictures/item/2005679642/).
  Spirals, broken scales, unconventional color, all chosen because the argument
  required them. A century before "data visualization," and a complete answer to
  the idea that visual form is neutral.
- **Lupi & Posavec, *Dear Data*** — [dear-data.com](https://www.dear-data.com/theproject).
  A new hand-drawn legend every week. The mapping is openly subjective and the
  work is stronger for admitting it.
- **Mark Lombardi, *Narrative Structures*** —
  [at Pierogi](https://www.pierogi2000.com/artists/mark-lombardi/). Public
  records, drawn carefully, saying what no sentence in the sources says.

Ask of each: *what is the correspondence, where does judgment enter, and **what
does this mapping make impossible to notice?***

## 3 · Live build B — "Thresholds and the shape of a claim" (~15 min)

```js
// one line that decides what counts
let flagged = values.filter(v => v > threshold);
```

Put `threshold` on a slider and project the count. Move it slowly. Watch a
population of "normal" become a population of "at risk" with no change to a
single underlying number.

Then build the visual consequence: nodes above threshold turn red, pulse, or
attract each other. The system now *dramatizes classification* — and students can
see the moment a continuous quantity became a category.

Name it: this is where the persuasive work of data happens, and it is one
comparison operator. Every dashboard they will ever use has one of these in it,
chosen by someone.

## 4 · Studio (~25 min)

Students work on **PROJECT 6**, due Wednesday.

While circulating:

- Ask for **the Refusal** — what the system deliberately will not show. Most
  won't have one yet; that conversation is the most valuable one you'll have
  today.
- Run the **shuffle test** on their piece. If shuffling the column changes
  nothing, the data is decoration.
- Check the README has the source, the retrieval date, and what happened to rows
  that didn't parse.
- Watch for anyone who has quietly rebuilt a bar chart. Ask what the running
  system does that a static chart wouldn't.

## 5 · Exit (5 min)

*Where is the threshold in your system — the line that decides what counts?
Who chose it, and what would move it?* — two sentences.

---

**Live-coding notes:** predict before running; keep instructive mistakes (a bug
that makes something interesting is the lesson); re-run repeatedly to show the
**range** one system produces — *the system is the work; the output varies.*
