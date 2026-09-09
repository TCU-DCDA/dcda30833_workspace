# Week 15 — Final System Studio · Session Plan

**Mode:** Integration · **MW, 80 min** · the last week of classes
**Where we work:** studio, with the projector available for critique.

> Not a live-coding session. Two working days, and the last structured help
> anyone gets before the exhibition. **LAB 13 is due Monday**; the last day of
> classes is Wednesday, May 5.

## Through-line (the one idea)

The temptation in a final week is to add. The instruction all week is the
opposite: **understand what your system already does.** The artist statement will
need that, the exhibition will expose its absence, and a feature added on
Thursday has never once been the thing that made a final project good.

---

## Monday, May 3 — Final build

**LAB 13 — Failure Harvest is due today.** Collect it, and spend five minutes on
the keeps: ask two or three students to show a failure they kept and say why. It
seeds the room with the right posture for the week.

### Studio (~70 min)

Circulate with three questions, in this order. They are diagnostic, and the order
matters:

1. **"State your rule in one sentence."** If they can't, that is the work for
   today — not the code.
2. **"What does it do that you didn't plan?"** No answer means the system is
   over-specified. Push them to loosen one constraint and re-run.
3. **"What are you about to add, and why?"** Nine times in ten the honest answer
   is anxiety. Redirect to watching the system longer.

Also check, because these break at exhibitions:

- Does it run from the **public URL**, not just the editor? Case-sensitive paths
  are the classic failure.
- Does audio start from a gesture, and does the canvas say so?
- Is every asset committed to the repo? No live APIs, no local paths.
- Does it survive a refresh, and five minutes of running?

### Before Wednesday

Everyone brings a **runnable URL** and a **draft artist statement**, however
rough. Not a description of the plan — an account of what the system currently
does.

---

## Wednesday, May 5 — In-progress critique

The last class meeting. Run it as a real critique, because it is the rehearsal
for the exhibition.

### Format (~70 min)

Each student gets **~5 minutes**, projected and running:

- **90 seconds, silent.** The system runs; nobody explains it. The room watches.
- **The room speaks first:** *what does this system do?* Describe behavior, not
  taste. No "I like it."
- **Then the maker:** state the rule and the constraint. Say where the room's
  description diverged from your intent — that gap is the most useful
  information available today.
- **One question from the room**, and one concrete suggestion the maker may
  ignore.

Hold the "no explaining first" rule firmly. A system that needs its author
present is not ready for a public exhibition, and the silent 90 seconds is the
only honest way to find that out.

### Closing (~10 min)

Practical, out loud:

- The exhibition is at our assigned final exam block, **May 10–14**. Confirm the
  time and room.
- What to bring: a URL, headphones if the piece is sonic, and the ability to
  explain any line — the **Explanation Test** applies live.
- The **Final Portfolio** is due in finals week: six or more works, a reflection,
  and the self-evaluation proposing a grade. Point at
  [the portfolio prompt](../projects/final_portfolio.html) and remind them that
  arrangement is part of the assignment.
- Every URL gets tested on someone else's machine before the exhibition. Trade
  laptops in the last five minutes and check each other's.

---

**Studio notes:** the failure mode of a final week is scope, not skill. Protect
the critique time — it is worth more than another hour of building, and it is
the last time these systems get seen by people who know how they were made.
