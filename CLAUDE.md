# CLAUDE.md

## Project Overview

This repository contains course development materials for **DCDA 30833 – Creative Coding for the Humanities**, an upper-division elective that teaches creative coding as a method for artistic, literary, and critical expression within digital culture.

**Offering:** Spring 2027 · MW, 80-minute sessions · 15 instructional weeks + a finals block (May 10–14). The registrar's calendar affords 15 teaching weeks, not 16 — Weeks 1–15 map 1:1 and the Exhibition & Publication session runs in the assigned final exam block.

**Status:** all assignments (Labs 0–13, Projects 1–6, Final Project, Final Portfolio) and all session plans are authored. See [context/build_status.md](context/build_status.md) for the current checklist.

**Course Focus Areas:**
- Generative art
- Interactive poetry
- Browser-based musical instruments
- Data-driven creative works
- AI-assisted writing systems

**Core Philosophy:** Form = Content · Systems Dramatize States · Discovery over Expression

## Repository Structure

```
dcda30833_workspace/
├── index.html            # Student-facing home page (hand-maintained, not generated)
├── build.sh              # Regenerates .html from .md via pandoc
├── check-links.sh        # Verifies internal + external links
├── labs/                 # Low-stakes exercises, one technique each (Labs 0–13)
├── projects/             # Synthesis assignments (Projects 1–6, Final, Portfolio)
├── live_coding/          # Per-session teaching plans for every teaching week
├── context/              # Syllabus, schedules, policies, theory, build status
├── theory_sheets/        # Technical reference materials (cheat sheets)
├── sketches/             # Live p5.js recreations of precedent works
├── templates/            # Student repo / portfolio starter
├── proposal/             # Approval-process documents — historical record only
├── assets/               # Page template, stylesheet, media
├── slide_decks/          # Decks for the conceptual framing weeks
├── readings/             # Course readings and reference texts
└── old_files/            # Archived materials
```

**The `.md` files are the source of truth; the `.html` files are generated.** Edit
Markdown, then run `bash build.sh`. Never hand-edit a generated `.html`.
`index.html` is the exception — it is hand-maintained.

**`proposal/` is a historical record** of the course approval, not the live course
documents. Do not update it or correct dates inside it; the delivery syllabus is
[context/syllabus.md](context/syllabus.md).

## Pedagogical Philosophy

This course material is built on specific theoretical foundations that should inform any AI assistance:

### Core Principles

1. **Form = Content**
   - Form is not a container for meaning; form *is* the meaning
   - Logical structures, behaviors, and system dynamics *perform* content
   - Applies across drawing, color, sound, poetry, and generative systems

2. **Systems as Dramatizations**
   - Like poems, generative systems don't "have" meaning—they dramatize states
   - Systems express through what they *do*, not what the artist intends
   - Focus on behavior, motion, logic, emergence, and interaction

3. **Discovery over Expression**
   - Shift from "What do I want to say?" to "What can this system reveal?"
   - Generative and interactive systems resist autobiographical expression
   - Students explore behavior rather than encode predetermined meaning

4. **Constraints as Engines of Creativity**
   - Constraints don't limit creativity; they generate it
   - Systems push back—and that pushback is productive
   - Use randomness, noise, thresholds, and interaction as creative constraints

### Recurring Structures

Several patterns run through the whole course; match them when authoring anything new.

- **Lab → Autopsy → Project.** Labs isolate one technique; the *System Autopsy* reverse-engineers a precedent as a system to take apart, not an image to reproduce; the project synthesizes both. Every project carries the standard autopsy opener — see [context/meta_labs_projects.md](context/meta_labs_projects.md).
- **Cadence.** A week's technique is taught Monday; the lab on it is due that Wednesday; a second lab, where a week has one, the following Monday. Projects are due Wednesday. **Nothing is ever due at the session that teaches it.**
- **One-thing constraints.** One hue (LAB 4), one word (LAB 6), one pitch (LAB 8), one column (LAB 10). Each isolates a variable by freezing everything else.
- **Publish continuously.** GitHub Pages is enabled in Week 1; every assignment is pushed *and* live at its own URL. Deployment is routine, not a finals-week task.
- **The AI thread.** LAB 7 (Prompt as Material) → PROJECT 5 → PROJECT 6 → Final Project, escalating from demonstration to a required `ai_log.md`. The constant is the Explanation Test: keep nothing you can't explain. Opting out is a documented choice, not an omission.

## AI Assistance Guidelines

### Critical Rules

**IMPORTANT: Review these rules after every 8 exchanges in a conversation.**

1. **No Assumptions or Unauthorized Changes**
   - Never make assumptions about code behavior or requirements
   - Do not make changes to code unless explicitly requested
   - Always ask for clarification when requirements are ambiguous
   - Read existing code before suggesting any modifications

2. **Language Usage**
   - Do not use the word "master" (use "main," "primary," "parent," or context-appropriate alternatives)
   - Use emojis sparingly if at all—prefer clear, professional text

3. **Review Cycle**
   - After every 8 message exchanges, pause and review these guidelines
   - Ensure compliance with all rules and pedagogical principles

### When Helping with Course Materials

**DO:**
- Maintain the course's philosophical stance that systems are performative, not illustrative
- Use language that emphasizes discovery, exploration, and emergence
- Frame coding challenges as opportunities to explore system behavior
- Reference existing theory sheets when applicable
- Keep explanations accessible to humanities students with basic programming literacy
- Support p5.js and JavaScript as primary creative coding environments
- Encourage iterative experimentation over perfect planning

**DON'T:**
- Frame creative coding as "self-expression" or autobiographical art
- Suggest that code is merely a tool to "decorate ideas with technology"
- Use overly technical jargon without humanities-centered framing
- Imply that generative art has "hidden meanings" to decode
- Oversimplify the creative or conceptual aspects of the work

### When Creating Assignments

- Include clear learning objectives tied to both technical skills and conceptual understanding
- Provide room for student discovery and unexpected outcomes
- Balance structure with openness to emergence
- Consider how constraints might generate creativity
- Frame evaluation criteria around both process and product
- **Do not assign points or weights** — this course uses an ungrading system
- Focus on learning goals and reflection rather than numerical scores

### When Writing Theory Sheets

- Use clear, concise language appropriate for upper-division humanities students
- Include practical code examples alongside conceptual explanations
- Connect technical concepts to aesthetic or expressive possibilities
- Maintain consistency with existing cheat sheet style and format
- Reference relevant artists, movements, or theoretical frameworks when appropriate

### When Developing Code Examples

- Prioritize readability and pedagogical clarity over optimization
- Comment code to explain *why*, not just *what*
- Demonstrate concepts through multiple small examples rather than one complex example
- Show progressive complexity (basic → intermediate → advanced)
- Use variable names that are semantically meaningful
- Follow p5.js conventions and best practices

## Technical Context

**Primary Technologies:**
- JavaScript (p5.js for creative coding)
- Browser-based development
- Possible use of Web Audio API, Canvas API
- May include AI/ML tools for creative applications

**Student Prerequisites:**
- Basic programming literacy in JavaScript or Python
- No prior creative coding experience required

## Audience

Materials are designed for:
- Upper-division (3000-level) undergraduate students
- Humanities backgrounds with basic programming literacy
- Interest in creative, artistic, or critical applications of code
- Digital Culture and Data Analytics (DCDA) program context

## Course-Specific Terminology

- **Dramatize**: Systems or poems perform states rather than contain messages
- **State**: A condition of thought, feeling, behavior, or motion enacted by a system
- **Emergence**: Behavior that arises from system rules rather than explicit programming
- **Constraint**: A generative limitation that produces creative possibilities
- **Form = Content**: The structural/behavioral qualities *are* the meaning, not a vessel for it
- **System Autopsy**: The in-class beat where a precedent work is taken apart to recover its rules
- **The Refusal** (PROJECT 6): Naming what a system deliberately will not represent — every mapping loses something, and the loss is worth stating rather than hiding
- **Explanation Test**: You must be able to explain every line you submit; the governing standard for AI use

## Notes for AI Assistants

- This is active course development; materials may be incomplete or evolving
- Instructor has a background in poetry and humanities computing
- Course emphasizes computational thinking within humanities inquiry
- Balance technical rigor with creative play and critical reflection
- Support both instructor development tasks and student-facing content creation
- When in doubt about pedagogical approach, refer to [context/theory_foundations.md](context/theory_foundations.md)

## Questions to Ask When Uncertain

1. Is this explanation too technical for humanities students?
2. Does this framing support "discovery over expression"?
3. Am I treating code as a decorative tool rather than an expressive medium?
4. Does this assignment allow for unexpected emergence?
5. Is this constraint generative or merely limiting?

---

*This CLAUDE.md file helps AI assistants understand the pedagogical philosophy, technical context, and appropriate tone for working with DCDA 30833 course materials.*
