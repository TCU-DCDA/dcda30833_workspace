# What DCDA 30833 Can Borrow from WRIT 40363

*Planning note, 2026-10-04. Not student-facing; `build.sh` does not convert it.*

**Source compared:** `/Users/curtrode/Code/curtrode/Teaching/WRIT/WRIT40363/WRIT40363_2026`. The lab pages are in `docs/labs/`, mainly `lab07.html`, `lab08.html` and `lab14.html`. The in-class handouts are in `docs/resources/sandboxes/`, mainly `four-small-moves.html`. The revision method is recorded in `lab_scannability_revision_plan_9-4-26.md`.

**Compared against:** the 30833 labs in [labs/](labs/), mainly [LAB 4](labs/lab_04_one_hue_world.md), plus the section structure of all fourteen.

## The governing difference

WRIT 40363 has three things worth borrowing:

- a fixed rhythm inside each lab step,
- a plain format for troubleshooting,
- a method for auditing labs.

Its weakness for 30833 comes from what its labs are for. Every WRIT lab extends one portfolio or app toward an end state known in advance. Every 30833 lab is a separate sketch whose outcome is meant to be unknown. Anything WRIT uses to make a lab converge on one correct result works against 30833's aims.

The test to apply to any borrowed device: **does it check whether the student kept the rule, or does it describe what the result should look like?** Keep the first kind. Leave the second.

## Worth borrowing

### 1. Predict before you run

The in-class handout *Four Small Moves* gives every challenge four beats:

1. **Say it** — in your own words, what has to happen?
2. **Predict** — what do you expect to see?
3. **Write it** — add only the line or two the challenge asks for.
4. **Check** — run the check and read the result.

"Predict" fits 30833 better than it fits WRIT. In WRIT it catches mistakes. In 30833 the gap between what a student predicted and what the system actually did *is* the discovery. That makes it a ready-made beat in two places:

- the System Autopsy, and
- the step from starter template to finished sketch, which no lab currently walks through.

Possible wording: "Before you change the noise scale, say what you expect. Run it. Write down what you didn't expect."

### 2. A short Check after each move, aimed at the rule

WRIT's labs follow the same order in every task: action, then code, then Check, then why (`lab07.html` is the model). 30833's labs have Purpose, Restrictions and Reflection, but nothing that helps a student confirm the constraint is actually holding. Some examples:

- **LAB 4:** "Search your sketch for every `fill()` and `stroke()`. The first argument of each is `hueValue`."
- **LAB 3:** "Run it three times. If two runs look identical, the randomness isn't reaching the system."
- **LAB 1:** "Search for `random(`. It should not appear."

Checks like these confirm the constraint and never say what the sketch should look like.

### 3. Symptom, likely cause, fix — for technical failures

This is WRIT's "Common Issues" format. The handout's "If you see…" lists work the same way. Each entry names what the student sees, then the likely cause, then the fix. 30833's later labs need it most; they currently have only "Technical Notes." For example:

- **Sound labs (8, 9).** No sound until a click: the browser won't start audio without a user gesture. Clicks and pops: an envelope jumps instantly to or from zero.
- **Data labs (10, 11).** A table that loads empty, or a file that won't load when the page is opened straight from disk instead of through a local server.

These are failures of the tools, not of the art, so a fixed fix is appropriate here. Keep the format to this kind of failure (see "Antithetical," item 5).

### 4. Read each lab against the one before it

WRIT's revision record found that every defect lived at the joins between labs; none showed up reading a lab alone. 30833's labs chain explicitly, through "What This Lab Prepares You For" and the one-thing constraints, so they deserve the same audit. One question to start with: does LAB 5's starter assume the HSB color mode LAB 4 set up?

Two related WRIT methods are worth reusing:

- **An AI model as a test student.** Have a model work through the labs as a student would, then verify what it reports before acting on any of it.
- **Measure a session as a whole.** Judge the lab together with its session plan in [live_coding/](live_coding/), not the lab by itself. WRIT found that measuring labs alone counted only half the teaching.

### 5. A single pointed closing question

WRIT ends labs with a "Reader Check," for example: "does your app say 'no results found,' or just show emptiness?" A 30833 version would ask whether the sketch dramatizes its state:

> Cover the title. Does the behavior alone carry the state, or is the title doing the work?

It could replace the weakest of the three Reflection questions instead of adding a fourth.

### 6. Two smaller conventions

- **Type where the syntax is new.** WRIT asks students to type code by hand wherever the syntax is new to them and lets them paste elsewhere. That supports the Explanation Test. 30833 could state the same rule once and point to it from the first lab that introduces each new area: p5.js drawing, Web Audio, loading data.
- **Two links on submission.** WRIT asks for the repository *and* the live URL: "a link, not a ZIP." LAB 4's header asks only for "GitHub link to your sketch," which sits oddly with 30833's own rule that every assignment is pushed *and* live. Only LAB 4 was checked, so the other lab headers need the same look.

## Antithetical to 30833

### 1. Checks that describe the finished output

"Your `:root` block now holds 22 tokens" works in WRIT because there is one correct state. In 30833 a check like that turns discovery into copying. This is the line not to cross when borrowing item 2 above.

### 2. One artifact built up lab by lab

WRIT's labs keep extending the same portfolio, so one missing line in Lab 07 (`list-style: none`) shows up all the way to the graded site. 30833's fresh sketch per lab is what lets each one-thing constraint isolate its variable. Don't chain code across labs.

### 3. Fully dictated code and long task lists

WRIT's Lab 07 runs about 2,900 words of numbered tasks with code to paste. 30833's labs are short on purpose: a small starter template plus a choice of system prompts. Turning them into numbered builds would leave no room for the unexpected.

### 4. Putting the "why" below the action

WRIT's revision moved the explanation below each Check because its explanations are best-practice reasons (accessibility, maintainability). In 30833 the concept is the action. Purpose and Core Idea come first because they define what the student is exploring. Borrow the Check, not the reordering.

### 5. Unexpected behavior treated as a defect to remove

Three WRIT tools assume a correct answer: the "silent failure sweep," the tracker with planted bugs, and the private answer keys. [LAB 13 — Failure Harvest](labs/lab_13_failure_harvest.md) treats failure as raw material. Bug-hunting fits the technical failures in item 3 above and nowhere else.

### 6. Growing success checklists

WRIT's success criteria grew from 6 to 13 bullets per lab during its revision. Under ungrading, 30833's criteria are already its Restrictions plus the Reflection. A feature checklist would make the assignment about compliance.

### 7. A lab-help chatbot from day one

WRIT runs a "Lab Guide" chatbot for every lab. In 30833 that would undercut the AI thread: LAB 7 → PROJECT 5 → PROJECT 6 → Final Project, building toward a required `ai_log.md`. The thread depends on AI arriving late and deliberately.

### 8. The upkeep machinery

WRIT's site is hand-maintained HTML that must never be regenerated, plus date-gated lab links and a chatbot that has to be kept in step with the pages. 30833's Markdown-to-pandoc build is simpler, and nothing here justifies giving that up.

## Recommendations

In priority order:

1. **Pilot on LAB 4.** Add a Predict beat, two rule-based Checks and one "If you see…" item. Read the result before extending the pattern.
2. **Add symptom → cause → fix sections to LABs 8–11.** These labs have the most predictable technical failures. Fold the existing Technical Notes into the new sections.
3. **Run a seam audit across LABs 0–13.** Read each lab against its predecessor, and each lab together with its session plan.
4. **Trial one "Cover the title" closing question** in place of a Reflection question, and decide whether to extend it.
5. **Check every lab header's Submission line** for the live URL alongside the repository link.

Leave alone: the short lab length, Purpose and Core Idea coming first, fresh sketches per lab, the Restrictions as the success criteria, and the AI thread's late start.
