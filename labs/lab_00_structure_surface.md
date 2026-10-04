# LAB 0 --- Structure & Surface as Systems

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 2 (Monday)\
**Tools:** HTML + CSS\
**Submission:** GitHub link to your lab folder

------------------------------------------------------------------------

## Before You Start

You don't need prior HTML or CSS for this lab. Everything here was built
live in Wednesday's session, and the
[HTML & CSS cheat sheet](../theory_sheets/html_css_cheatsheet.html) covers
it all. If your intro course was in Python, start there.

**Your files** are already in your repo, in
`labs/lab-00-structure-surface/`: an `index.html` with the page skeleton
and an empty `style.css`, already linked. Do your work in those two files.

**To see your page,** open `index.html` in a browser (double-click it, or
drag it into a window) and refresh after every save. Right-click anything
and choose *Inspect* to see the nesting the browser actually built.

**The five ideas you need:**

1.  **Elements nest.** Anything between `<div>` and `</div>` is *inside*
    that div. Indent your code so you can see what holds what. Every tag
    you open, close.
2.  **Block vs. inline.** `<section>`, `<div>`, and `<p>` stack
    vertically; `<span>` marks a piece *within* a line.
3.  **Classes name roles.** Write `<div class="obligation">` in HTML, and
    `.obligation { ... }` in CSS (note the dot) to write a rule for every
    element with that role.
4.  **A rule is selector + declarations.** `.obligation { padding: 1rem;
    color: #333; }` One rule applies to every match.
5.  **`:hover` is a state.** `.obligation:hover { ... }` applies only while
    the pointer is over it.

Expect one surprise in Part 1: the browser will not show your nesting.
That's not a bug. It's the point of Part 2.

------------------------------------------------------------------------

## Purpose

This lab introduces the core idea that **structure and rules already
create meaning**, even before motion, sound, or JavaScript.

You will treat:

-   **HTML as a structural system**
-   **CSS as a rule-based visual system**

This is not about making a "pretty webpage." It is about designing a
**system of relationships**.

------------------------------------------------------------------------

## Part 1 --- Structural Portrait (HTML Only)

Create a simple HTML page that represents *something about you* using
**structure only**.

### Rules

-   Use only:
    -   `div`
    -   `section`
    -   `p`
    -   `span`
-   **No CSS yet**
-   **No images**
-   **No styling**
-   Focus entirely on:
    -   hierarchy
    -   grouping
    -   containment

Think in terms of: - layers - categories - relationships - emphasis
through nesting

This is a **portrait built from structure**, not appearance.

------------------------------------------------------------------------

## Part 2 --- Surface as a Rule System (CSS)

Now add a CSS file and apply **class-based rules**.

### Your CSS must include:

-   Background color
-   Text color
-   Spacing (padding or margin)
-   **At least one hover state**

### Restrictions

-   Do not manually position elements for visual composition
-   Do not use images
-   Let the **rules themselves produce the visual effect**

------------------------------------------------------------------------

## Reflection (3--5 Sentences)

Answer briefly:

1.  What structural decision shaped the page the most?
2.  What single CSS rule changed the mood the most?
3.  How is this already a "system," even without motion?

------------------------------------------------------------------------

## What This Lab Prepares You For

Next week, you will: - Add **time** - Add **motion** - Add **behavior**

This lab proves you already know how to build expressive systems before
JavaScript enters the picture.
