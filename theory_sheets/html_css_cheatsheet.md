# HTML & CSS Cheat Sheet for Creative Coding

A practical guide to the two systems underneath every page in this course. HTML
decides **what holds what**. CSS decides **what rules apply to what**. Neither
one draws anything by hand. Every p5.js sketch you make this semester lives
inside an HTML page, so this is the floor the rest of the course stands on.

---

## 1. Two Systems, Not One

| | HTML | CSS |
|---|---|---|
| Answers | What is this, and what contains it? | How should things like this behave? |
| Made of | Elements nested inside elements | Rules matched to elements |
| Lives in | `index.html` | `style.css` |
| Without the other | A plain, flush-left page | Rules with nothing to act on |

Keep them in separate files. That separation is the point: you can change the
entire surface of a page without touching its structure, and the reverse.

---

## 2. Anatomy of an Element

```html
<p class="kept">the poem I meant to finish</p>
```

- `<p>` is the **opening tag**, `</p>` the **closing tag**
- `class="kept"` is an **attribute**, a label CSS can find later
- the text between the tags is the **content**

Every element you open, you close. A missing `</div>` is the most common
reason a page "looks wrong."

---

## 3. The Page Skeleton

Every HTML file starts the same way. Your Lab 0 starter already has this:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lab 00 — Structure & Surface</title>
  <link rel="stylesheet" href="style.css">   <!-- connects the CSS file -->
</head>
<body>
  <!-- everything visible goes here -->
</body>
</html>
```

- `<head>` holds information *about* the page (title, stylesheet link)
- `<body>` holds what the viewer sees
- the `<link>` line is the only thing connecting your HTML to your CSS. If
  your styles do nothing, check this line first.

---

## 4. The Four Lab 0 Tags

| Tag | Kind | Use it for |
|---|---|---|
| `<section>` | block | a major region or category |
| `<div>` | block | a generic container, a group of things |
| `<p>` | block | a line or paragraph of text |
| `<span>` | inline | a piece *inside* a line you want to mark |

**Block** elements stack vertically and take the full width. **Inline**
elements sit within a line of text. That difference is structural before it is
visual.

---

## 5. Nesting: Structure as Meaning

Elements contain other elements. Indent your code so you can see the
hierarchy:

```html
<section>
  <p>outer</p>
  <div>
    <p>inside</p>
    <div>
      <p>further inside</p>
    </div>
  </div>
</section>
```

Relationships to name:

- **parent / child**: the `<section>` is the parent of the first `<div>`
- **siblings**: elements side by side inside the same parent
- **depth**: how many containers something sits inside

**The surprise:** open that file in a browser with no CSS and the nesting
**disappears**. Everything renders flush left. The hierarchy exists only in the
source until a rule makes it visible. Structure and appearance are different
systems.

---

## 6. Anatomy of a CSS Rule

```css
.obligation {
  padding-left: 1.5rem;
  opacity: 0.8;
}
```

- `.obligation` is the **selector**: which elements this rule applies to
- each line inside the braces is a **declaration**: a `property: value;` pair
- the semicolon ends each declaration; the closing brace ends the rule

One rule, written once, applies to *every* element it matches. That's what
makes CSS a system rather than a set of decorations.

---

## 7. Selectors

| Selector | Matches | Example |
|---|---|---|
| `p` | every `<p>` | `p { color: #333; }` |
| `.name` | every element with `class="name"` | `.kept { font-style: italic; }` |
| `.a .b` | `.b` elements anywhere inside `.a` | `.self .kept { ... }` |
| `.name:hover` | `.name` while the pointer is over it | `.kept:hover { ... }` |

Prefer **classes**. A class names a *role* in your system ("obligation,"
"kept," "noise") rather than a position on the page. You can give an element
more than one: `class="obligation heavy"`.

---

## 8. Properties for Lab 0

### Color
```css
body  { background: #f4f1ea; color: #2b2b2b; }
```
Hex codes (`#f4f1ea`), named colors (`tomato`), or `rgb(43, 43, 43)`. See the
[Color Theory sheet](color_theory_cheatsheet.html) for choosing them.

### Spacing: the box model
Every element is a box:

```
margin   → space outside the border, between boxes
border   → the edge
padding  → space inside the border, around the content
content  → the text
```

```css
.group { padding: 1rem; margin-bottom: 2rem; border-left: 2px solid #999; }
```

### Type
```css
p { font-family: Georgia, serif; font-size: 1.1rem; line-height: 1.6;
    letter-spacing: 0.05em; font-style: italic; font-weight: bold; }
```

### Visibility
```css
.faint { opacity: 0.5; }   /* 1 = solid, 0 = invisible */
```

**Units:** `px` is fixed pixels. `rem` is relative to the base text size, so
`2rem` means "twice the normal text size." Use `rem` for spacing that scales
with type.

---

## 9. Hover: The First Behavior

```css
.kept {
  color: #999;
  transition: color 0.6s;     /* change gradually, not instantly */
}
.kept:hover {
  color: #000;
}
```

`:hover` is the page's first response to a viewer. Rules now depend on
**state**: the same element follows different rules depending on what someone
is doing. That is the seed of every interactive system later in the course.

Hovering a parent can change its children:

```css
.self:hover .obligation { opacity: 1; }
```

---

## 10. The Cascade: Rules That Compound

This is where CSS stops being decoration and starts behaving like a system.

**Inheritance.** Some properties (`color`, `font-family`) pass from parent to
child automatically. Set them once on `body` and the whole page follows.

**Compounding.** Some properties stack with depth:

```css
.obligation { padding-left: 1.5rem; opacity: 0.8; }
```

Applied to nested `.obligation` boxes:

| Depth | Total indent | Effective opacity |
|---|---|---|
| 1 | 1.5rem | 0.80 |
| 2 | 3rem | 0.64 |
| 3 | 4.5rem | 0.51 |
| 4 | 6rem | 0.41 |

You wrote one rule. The structure produced four different results. A child
also can never be *more* opaque than its parent, so a deeply nested element
can't be fully recovered on its own. Is that a limitation or a meaning?

**Conflicts.** When two rules disagree, the more specific selector wins (a
class beats a tag), and if they're equally specific, the later rule wins.

---

## 11. Seeing Your Work

- **Open the file:** double-click `index.html`, or drag it into a browser
  window. Refresh after every save.
- **VS Code Live Server** (optional extension): reloads the page whenever you
  save.
- **Inspect:** right-click any element → *Inspect*. The browser shows the
  nesting and every rule applied to that element. Uncheck a rule to switch it
  off. This is the fastest way to answer "why does it look like that?"
- **Live:** once GitHub Pages is on, `git push` publishes it. See the
  [deployment deck](../slide_decks/deployment/index.html).

---

## 12. Where the Canvas Comes In

From Week 2 on, your page will hold one more element:

```html
<head>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.9.0/p5.min.js"></script>
</head>
<body>
  <script src="sketch.js"></script>
</body>
```

p5.js creates a `<canvas>` element inside your `<body>`, an embedded
environment that JavaScript draws into every frame. Everything on this sheet
still applies around it: CSS can set the page's background, center the canvas,
or frame it. HTML holds the canvas. The canvas holds the motion.

---

## 13. Typical Student Pitfalls

- forgetting a closing tag, so everything after it nests wrongly
- `class="kept"` in HTML but `kept { }` in CSS (missing the dot)
- the stylesheet link points at the wrong filename, or the wrong case
  (`Style.css` vs `style.css`; GitHub Pages cares even if your laptop doesn't)
- styling one element at a time instead of writing a rule for a role
- positioning things by hand instead of letting structure and spacing do it
- not indenting HTML, so you can't see your own hierarchy

---

## 14. Conceptual Contexts

Structure has always carried meaning before style:

- **Concrete poetry** (Gomringer, de Campos): arrangement as the poem
- **Sol LeWitt's wall drawings**: written rules, executed by others; CSS is a
  wall-drawing instruction set the browser carries out
- **Josef Müller-Brockmann, *Grid Systems***: layout as a rule system
- **Semantic markup**: the web's founding idea that a document describes *what
  things are*, and appearance is applied separately

---

## 15. Teaching Metaphors

- "HTML is the skeleton; CSS is the weather."
- "Write a rule for a role, not for a spot."
- "If you can't see the structure, inspect it."
- "One rule, many results: that's a system."
- "The page you didn't draw is the one the rules produced."

---

_End of cheat sheet._
