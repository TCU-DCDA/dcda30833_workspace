# PROJECT 4 --- Animated & Interactive Concrete Poem

**Course:** DCDA 30833 --- Creative Coding for the Humanities\
**Due:** Week 8 (Thursday)\
**Tools:** p5.js (optionally with AI-generated text from LAB 7)\
**Submission:** GitHub link to your project folder + short written
reflection

------------------------------------------------------------------------

## Purpose

This project brings together everything in the text arc: text as visual
material (LAB 6) and language as a system that pushes back (LAB 7) ---
now set in **motion** and made **interactive**.

You will build a **concrete poem as a behaving system**. In concrete
poetry, the arrangement and behavior of the words *is* the meaning ---
form is content, literally. Here the words also **move** and **respond**,
so the poem performs a state through what it *does*, not through what it
declares.

You are not animating a message. You are designing a text system whose
motion and response to the reader dramatize a condition --- hesitation,
insistence, erosion, swarming, refusal.

------------------------------------------------------------------------

## Precedents --- System Autopsy (In-Class)

> **How examples work in this course:** you will always be shown examples
> --- but here, an example is a **system to take apart, not an image to
> reproduce.** You'll see how a work was made, and the range of outcomes
> its rules can produce, more often than a single finished "right answer."
> There is no result to match: a strong system can generate many different
> outcomes, including ones no one has made yet.

Before you build, take apart how others have made text *behave*. The
point is not to imitate a look but to **reverse-engineer behavior**: what
rule moves the text, and what does the reader's action actually change?

**Look at:**

-   **Eugen Gomringer --- *Silencio* (1954):** the word "silencio"
    repeated into a frame around a silent gap. The arrangement *is* the
    poem --- the ground of concrete poetry.
-   **Augusto de Campos & Brazilian concrete poetry:** words built as
    spatial, visual objects ("ideograms"), not lines to read in order.
-   **bpNichol --- *First Screening* (1984):** a suite of *kinetic*
    computer poems written in Apple BASIC --- text that animates itself.
    The bridge from page to behavior.
-   **Allison Parrish:** poems as the output of a procedure --- language
    generated and arranged by rule.

**Where to find them (free):**

-   bpNichol --- [*First Screening* preserved at vispo.com](https://vispo.com/bp/introduction.htm): emulator, the original **BASIC source**, and a **JavaScript port** you can read; also at [Rhizome](https://rhizome.org/community/38976/)
-   Concrete poetry (Gomringer, de Campos) --- [UbuWeb: *Concrete Poetry, A World View*](https://ubu.punctumbooks.com/papers/solt/brazil.html) and a [movement overview at The Art Story](https://www.theartstory.org/movement/concrete-poetry/); see also our own [kinetic *Silencio* recreation](../sketches/concrete_poem.html)
-   Allison Parrish --- free works at [decontextualize.com](https://www.decontextualize.com/) and code at [github.com/aparrish](https://github.com/aparrish)

**Autopsy questions (ask of each):**

1.  What rule governs how the text is arranged or moves? Could you restate
    it as a few lines of pseudocode?
2.  Where is the text working as *shape* and where as *readable language*?
3.  What does the reader's action (if any) actually change --- the system,
    or only the surface?
4.  What state does the behavior dramatize, setting aside "what it says"?
5.  If you changed one rule, or removed the interaction, what would happen?

*In class: examine 2--3 of these together at the project's launch (~20--30
minutes), then carry the same questions into your own build.*

------------------------------------------------------------------------

## Core Requirements

Your system must:

-   Use **p5.js**
-   Make **text the primary material** (words or letters as shapes, per
    LAB 6 --- not text as a caption on top of other imagery)
-   Include **motion** governed by a rule (time, `frameCount`, or response
    to input --- not a one-off tween)
-   Include **interaction** that changes the system's behavior
-   Maintain a clear, recognizable **system identity**
-   Produce variation over time or interaction

------------------------------------------------------------------------

## Interaction Requirements

-   At least **one meaningful interaction** (mouse position, click, key,
    or typing) that **alters the text system itself** --- its rule, its
    state, its arrangement.
-   The interaction should let the reader *discover* the system, not just
    decorate it. Ask: if I removed this input, would the piece lose its
    behavior, or just a flourish?

------------------------------------------------------------------------

## Technical Requirements

-   Use **p5.js** (`text()`, `textSize()`, transformations, and the mouse
    / keyboard event functions)
-   You may use the **DOM** for text if it suits your system
-   Default canvas: `400 × 400` (override if your system needs it)
-   No images
-   **AI-generated text is allowed** as material (carry it forward from
    LAB 7). If you use it, say so in your artist statement: what did the AI
    contribute, and what did you decide?

------------------------------------------------------------------------

## Process Documentation Requirements

Your project folder must include:

-   `index.html` and `sketch.js`
-   A `README.md` artist statement (300--500 words) addressing:
    -   What rule moves the text?
    -   What does the interaction change?
    -   What state does the system dramatize?
-   If you used AI text: a note on what it contributed and what you curated

------------------------------------------------------------------------

## Reflection (5--7 Sentences)

What rule governs your text's behavior?\
What does the reader's interaction actually change?\
Where is the text shape, and where is it language?\
What surprised you once the system was running?

------------------------------------------------------------------------

## How This Project Fits the Course Arc

This project closes the **text arc** and the **first half** of the course.
You have moved from text as static shape (LAB 6), through language as a
collaborator (LAB 7), to text as a **behaving, responsive system**.

Next, the course shifts mode again --- from text to **sound** --- but the
underlying question is unchanged: what state can this system dramatize
through what it *does*?

------------------------------------------------------------------------

*End of PROJECT 4*
