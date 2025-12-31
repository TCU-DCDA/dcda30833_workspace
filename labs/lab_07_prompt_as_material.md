# LAB 7 — Prompt as Material

**Course:** DCDA 30833 — Creative Coding for the Humanities
**Due:** Week 7 (Thursday)
**Tools:** p5.js + AI assistant (Claude, ChatGPT, or similar)
**Submission:** GitHub link to your lab folder

---

## Purpose

This lab introduces **AI prompting as a creative coding discipline**.

You will build a generative sketch by working *through* an AI assistant, treating the conversation as a constraint system — not a shortcut. The goal is **discovery**, not delivery.

This lab asks: What happens when natural language becomes your creative code?

---

## Core Tension

This course teaches: *"What can this system reveal?"*

AI prompting often defaults to: *"Make me a thing that does X."*

Your task is to resist the second impulse. You are not ordering a product. You are **negotiating with a system** that has its own behaviors, defaults, and surprises. The AI is a collaborator that pushes back — like `random()`, like `noise()`, like data.

---

## Part A: Prompt as Constraint

### The Rule

You may describe **constraints, rules, and behaviors** — but not **outcomes**.

**Allowed:**
- "Use only circles and the sin() function"
- "Create variation through rotation and scale"
- "The system should respond to frameCount"

**Not allowed:**
- "Make a pulsing mandala"
- "I want floating particles that glow"
- "Create something that looks like rain"

The moment you specify what it should *look like*, you've stopped discovering.

### Requirements

- Minimum **3 prompt iterations** (you must respond to what the AI gives you)
- You may edit the AI's code, but each edit should prompt a new conversation turn
- Document which AI tool you used

---

## Part B: Curate the Machine

### The Rule

Generate more than you need. The creative act is **selection**.

### Requirements

- Generate at least **5 variations** through prompting
- Select **2-3** that interest you
- Combine, edit, or sequence them into a final sketch
- In your reflection, explain: Why these? What did you reject?

---

## Deliverables

Your lab folder should contain:

```
lab-07-prompt-as-material/
├── index.html
├── sketch.js
├── conversation.md      # Annotated excerpts (see below)
└── reflection.md
```

### conversation.md Format

Document **3-5 key moments** from your AI conversation. For each:

```markdown
## Moment 1: [Brief title]

**My prompt:**
[What you asked]

**AI response (summary or excerpt):**
[What it gave you — can be abbreviated]

**Why this mattered:**
[Surprise? Redirection? Failure? Discovery? What did you learn or decide?]
```

This is not a full transcript. It's an **annotated selection** of the turns that shaped your work.

---

## Restrictions

You **must**:

- Use an AI assistant for code generation
- Work iteratively (no single-prompt submissions)
- Document your conversation
- Run and respond to every piece of AI-generated code

You **may not**:

- Specify visual outcomes in your prompts
- Submit code you haven't run and evaluated
- Use AI-generated code without understanding what it does
- Skip the conversation documentation

---

## Example Prompts (Constraint-Based)

Use these as starting points, or invent your own:

- "Write a p5.js sketch that uses only `line()` and `rotate()`"
- "Create a grid where each cell follows a different rule based on its position"
- "Generate three variations of a system that uses `noise()` for movement"
- "Build something using `frameCount` and modular arithmetic"
- "Make the background the most important visual element"

### Anti-Examples (Outcome-Based — Avoid These)

- "Make generative art that looks organic"
- "Create a beautiful particle system"
- "I want something that feels calm and meditative"
- "Make it look like the night sky"

---

## Reflection (3–5 Sentences)

Answer briefly:

1. What did the AI give you that you wouldn't have made yourself?
2. Where did you have to push back or redirect? What does that reveal about the system?
3. How is prompting similar to or different from writing code directly?

---

## What This Lab Prepares You For

In **Project 4 — Animated & Interactive Concrete Poem**, you may choose to incorporate AI:

- AI-generated text fragments as material
- Prompt-assisted animation or interaction logic
- Collaborative human-AI composition

If you use AI in Project 4, your artist statement should address: What did the AI contribute? What did you contribute? What emerged from the collaboration?

More broadly, this lab teaches you to treat **any generative system** — AI, randomness, data, interaction — as a collaborator that pushes back, not a tool that obeys.

---

## A Note on Discovery

The course principle *"Discovery over Expression"* applies here.

When you write code directly, you make every decision. When you prompt an AI, you relinquish some control — and that's the point. The AI will make choices you wouldn't. Some will be boring. Some will be wrong. Some will be genuinely surprising.

Your job is to **notice**, **respond**, and **curate**. The conversation is the creative work.

---

*End of LAB 7*
