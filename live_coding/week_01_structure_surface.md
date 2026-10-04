# Week 1 — Structure & Surface · Live-Coding Plan

**Mode:** Structure & Interface · **Wednesday only, 80 min** (Monday is MLK Day) · scaffolds LAB 0 (Structure & Surface as Systems), due Monday of Week 2
**Where we work:** VS Code (or any text editor) and a browser, side by side, projected. Build from an empty `index.html`, including the mistakes. Then GitHub, for the Pages segment.

## Through-line (the one idea)

This is the only session of Week 1, and it carries three things: the course's
stance, the two systems under every page, and getting each student's work onto
the open web. The idea that holds them together: **a page is not drawn, it is
derived.** HTML sets relationships, CSS sets rules, and the browser produces a
result nobody placed by hand. That is already a generative system, before any
JavaScript.

Assume nothing. Some students came through a JavaScript intro; others came
through Python and have never written a tag. Everything Lab 0 needs gets built
on screen today, and the [HTML & CSS cheat sheet](../theory_sheets/html_css_cheatsheet.html)
holds all of it for later.

## 0 · Open (10 min)

Course stance from the [Week 1 deck](../slide_decks/DCDA30833_Week1_Week2_Deck.pptx),
slides 1–2 only: code as material, form = content, *exploration over
self-expression*. The p5.js slides belong to Week 2, so stop there.

Then pull up any web page and open *Inspect*. Ask: *"Who placed every one of
these elements?"* Answer: no one. Someone wrote containers and rules; the
browser did the rest. *Today you write both.*

## 1 · Live build A — "Structure only" (15 min)

Blank `index.html`. Type the skeleton (`<!DOCTYPE>`, `<head>`, `<body>`) and
name each part once. Then build a small nested structure using only the four
Lab 0 tags. Use your own content; the version below is a model:

```html
<section class="self">
  <p>a student</p>
  <div class="obligation">
    <p>a job</p>
    <div class="obligation">
      <p>a Saturday shift</p>
      <div class="obligation">
        <p>a coworker who can't cover</p>
        <div class="obligation">
          <p><span class="kept">the poem I meant to finish</span></p>
        </div>
      </div>
    </div>
  </div>
</section>
```

Beats to hit live:

- Indent as you type and say why: *the indentation is how you see the
  hierarchy.*
- **Predict before running:** *"With four levels of nesting, what will this
  look like in the browser?"* Most of the room will say "a staircase." Run it.
  It's flat. Every line flush left. **The structure is invisible until a rule
  reveals it.** Let that land; it's the session's first discovery.
- Open *Inspect* on the flat page. The nesting is all there, in the element
  tree. Structure and appearance are separate systems.
- Leave out one `</div>` on purpose and inspect again. The tree is now wrong.
  This is the bug students will hit most this week; show them how to find it.

Name the vocabulary once, plainly: element, tag, attribute, parent, child,
nesting. Point to the cheat sheet; don't drill it.

## 2 · Discussion (5 min)

*If nothing is visible yet, where is the meaning right now? What did you decide
just by choosing what goes inside what?* Connect to the course term: the
structure already **dramatizes** a relationship (here, burial), even though
the screen shows nothing of it.

## 3 · Live build B — "Surface as rules" (20 min)

Create `style.css`. Add the `<link>` line to the `<head>` and say clearly:
*this one line is the only connection between the two files.* Then build the
rules one at a time, refreshing after each.

```css
body {
  background: #f4f1ea;
  color: #2b2b2b;
  font-family: Georgia, serif;
}
```

Run. Note that `color` and `font-family` reach every element: **inheritance**,
one rule, whole page.

```css
.obligation {
  padding-left: 1.5rem;
  border-left: 1px solid #b8b0a0;
}
```

**Predict:** *"I wrote one padding value. How many different indents will
there be?"* Run. Four. The staircase appears, and nobody positioned anything.
**One rule, many results: that is a system.**

```css
.obligation { opacity: 0.8; }   /* add to the rule above */
```

**Predict:** *"Every box is 80% opaque. How faint is the poem?"* Run. Much
fainter than 80%. Opacity multiplies down through the nesting, to about 41% at
the bottom. Now try to rescue it:

```css
.kept { opacity: 1; }
```

Run. Nothing changes. A child can't be more opaque than its parent. Keep this
"failure" on screen; it's the best moment of the session. The structure has
made a decision the surface can't override. *Is that a limitation or a
meaning?*

Then add the first behavior:

```css
.self:hover .obligation {
  opacity: 1;
  transition: opacity 0.6s;
}
```

Hover the whole portrait. The weight lifts. Name it: **state.** The same
elements now follow different rules depending on what a viewer does. Every
interactive system later in the course starts here.

Close the build by pointing out the rule Lab 0 sets: *no manual positioning.*
Everything on screen came from structure, spacing, and the cascade.

## 4 · Publish (20 min)

Hand off to the [deployment deck](../slide_decks/deployment/index.html). Run it
lean: the concept slides ("a sketch is finished when others can reach it"),
then straight into the live demo and the in-class exercise. Every student
leaves with:

- their repo created from the course template and set to Public
- **GitHub Pages enabled, serving from the root**
- the empty Lab 0 starter loading at its live URL

Don't wait for Lab 0 to be finished. The starter page going live is the win.
Circulate; the usual snag is serving from a subfolder instead of the root.

## 5 · Studio (5 min)

Students open their own `labs/lab-00-structure-surface/index.html` and write
the first containers of Part 1. The goal is only to start: one `<section>`, one
level of nesting, opened in the browser. Point Python-background students to
the "Before You Start" box at the top of Lab 0 and the cheat sheet.

## 6 · Exit (5 min)

*What's one relationship in your Part 1 that the browser can't show yet?* Two
sentences in their notes. It becomes the starting question for their CSS.

---

**Live-coding notes:** predict before every run; the flat page and the
unrescuable poem are the two beats that make the session, so don't hurry past
either. Build with **your own** content in class rather than handing out the
model above as a finished piece; students should see the moves, not copy the
portrait. If time runs short, cut from studio, never from Publish. Pages has to
be on before anyone leaves.
