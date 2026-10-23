# Student Repositories & Workflow for DCDA 30833

How your course repository is organized, how you get it, and how your work goes live on GitHub Pages.

---

## Overview

Given the course's ungrading philosophy and emphasis on process over product, we use a **single-repo model**:

- **1 Course Repository** per student (all labs, projects, and portfolio in one place)

This minimizes overhead, shows the full semester arc in commit history, and naturally builds toward the final portfolio. Each student creates their copy from a shared **template repository** (details below).

---

## Repository Structure

### Course Repository (1 per student)

**Created from template:** `dcda30833` (a GitHub *template repository* — see [Getting Your Repository](#getting-your-repository) below)

```
dcda30833-[username]/
├── README.md
├── labs/
│   ├── lab-00-structure-surface/
│   │   ├── index.html
│   │   ├── style.css
│   │   └── reflection.md
│   ├── lab-01-rule-without-random/
│   │   ├── index.html
│   │   ├── sketch.js
│   │   └── reflection.md
│   ├── lab-02-random-without-design/
│   ├── lab-03-controlled-randomness/
│   ├── lab-04-one-hue-world/
│   ├── lab-05-palette-as-prison/
│   ├── lab-06-text-as-object/
│   ├── lab-07-prompt-as-material/
│   ├── lab-08-envelope-only/
│   ├── lab-09-rhythm-without-notes/
│   ├── lab-10-mapping-without-message/
│   ├── lab-11-three-mappings/
│   ├── lab-12-system-translation/
│   └── lab-13-failure-harvest/
├── projects/
│   ├── project-01-self-portrait/
│   │   ├── index.html
│   │   ├── sketch.js
│   │   ├── README.md           # Artist statement
│   │   └── assets/
│   ├── project-02-generative-visual/
│   ├── project-03-color-composition/
│   ├── project-04-concrete-poem/
│   ├── project-05-generative-sound/
│   ├── project-06-data-driven/
│   └── final-project/
└── portfolio/
    ├── index.html              # GitHub Pages landing page
    ├── style.css
    └── reflection.md           # Final self-evaluation
```

**Why one repo for everything:**
- Single point of truth for all student work
- Commit history shows full semester progression
- Natural foundation for final portfolio (already organized)
- One GitHub Pages site can serve everything
- Easier for instructor to review and provide feedback
- Reduces cognitive overhead (no juggling multiple repos)

**Trade-offs:**
- All work lives together, so there are no per-assignment submissions to track separately
- Critique sessions require navigating to subfolders
- Larger repo size by end of semester

---

### Folder Structure Details

#### Labs (`labs/`)

Each lab folder contains:
```
lab-XX-[name]/
├── index.html          # HTML wrapper
├── sketch.js           # p5.js code (or style.css for Lab 0)
└── reflection.md       # 3-5 sentence reflection
```

#### Projects (`projects/`)

Each project folder contains:
```
project-XX-[name]/
├── index.html          # HTML wrapper
├── sketch.js           # Main code
├── README.md           # Artist statement (300-500 words)
├── assets/             # Images, sounds, data files
└── process/            # Optional: screenshots, iterations, notes
```

#### Portfolio (`portfolio/`)

GitHub Pages serves from the repo root, so the portfolio lives at `/portfolio/` and every lab/project is reachable at its own path (see GitHub Pages Setup below):
```
portfolio/
├── index.html          # Landing page linking to all work
├── style.css           # Portfolio styling
└── reflection.md       # Final self-evaluation for ungrading
```

---

## Starter Templates

### Course Repo README (README.md)

```markdown
# DCDA 30833 — Creative Coding for the Humanities

[Your Name]

This repository contains all my work for DCDA 30833.

## Structure

- `labs/` — Weekly technique-focused exercises
- `projects/` — Major creative works with artist statements
- `portfolio/` — Final portfolio site and reflection

## Running Sketches

Open any `index.html` in a browser, or use the Live Server extension in VS Code.

## Portfolio

View my portfolio at: [GitHub Pages URL]
```

### Project README (projects/project-XX/README.md)

```markdown
# Project X — [Title]

**DCDA 30833 — Creative Coding for the Humanities**

## Artist Statement

[Write 300-500 words about your system: What rules govern it? What behaviors emerge? What did you discover?]

## Running the Sketch

Open `index.html` in a browser or view live at: [GitHub Pages URL]

## Process Notes

[Optional: Include iterations, failed experiments, or observations from development]
```

### Lab Starter (labs/lab-XX/sketch.js)

```js
// LAB XX — [Lab Name]
// DCDA 30833

function setup() {
  createCanvas(400, 400);
  // Your setup code here
}

function draw() {
  background(220);
  // Your system code here
}
```

### Lab Starter (labs/lab-XX/index.html)

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lab XX — [Lab Name]</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.9.0/p5.min.js"></script>
</head>
<body>
  <script src="sketch.js"></script>
</body>
</html>
```

### Lab Reflection (labs/lab-XX/reflection.md)

```markdown
# Reflection — Lab XX

1. [Response to reflection prompt 1]

2. [Response to reflection prompt 2]

3. [Response to reflection prompt 3]
```

### Portfolio Landing Page (portfolio/index.html)

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>[Your Name] — DCDA 30833 Portfolio</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <h1>[Your Name]</h1>
    <p>Creative Coding for the Humanities — Spring 2027</p>
  </header>

  <main>
    <section id="projects">
      <h2>Projects</h2>
      <ul>
        <li><a href="../projects/project-01-self-portrait/">Project 1: System Self-Portrait</a></li>
        <li><a href="../projects/project-02-generative-visual/">Project 2: Generative Visual Study</a></li>
        <li><a href="../projects/project-03-color-composition/">Project 3: Algorithmic Color</a></li>
        <li><a href="../projects/project-04-concrete-poem/">Project 4: Concrete Poem</a></li>
        <li><a href="../projects/project-05-generative-sound/">Project 5: Generative Sound</a></li>
        <li><a href="../projects/project-06-data-driven/">Project 6: Data-Driven System</a></li>
        <li><a href="../projects/final-project/">Final Project</a></li>
      </ul>
    </section>

    <section id="labs">
      <h2>Selected Labs</h2>
      <ul>
        <!-- Add links to your favorite labs -->
      </ul>
    </section>

    <section id="reflection">
      <h2>Final Reflection</h2>
      <p><a href="reflection.md">Read my semester reflection</a></p>
    </section>
  </main>
</body>
</html>
```

### Portfolio Reflection (portfolio/reflection.md)

```markdown
# Final Reflection & Self-Evaluation

**DCDA 30833 — Creative Coding for the Humanities**
**[Your Name]**

## Semester Overview

[Reflect on your journey through the course. What did you learn? How did your understanding of creative coding evolve?]

## Growth & Process

[Describe specific moments of growth, productive failures, or breakthroughs. Reference specific labs or projects.]

## Self-Evaluation

[Based on your growth, effort, and the quality of your work, propose and justify your final grade.]
```

---

## Getting Your Repository

The course has one **template repository**. You make your own copy of it once,
in Week 1, and use that copy all semester.

### Week 1

1. Open the template repo and click **"Use this template" → "Create a new repository."**
2. Name it (e.g., `dcda30833-yourname`) and make it **Public.**
3. Clone it, and enable GitHub Pages once (see [Workflow for Students](#workflow-for-students)).
4. **Share the repository URL with the instructor** (through the sheet or form shared in class).

That's all: copy the template, share the URL.

---

## Workflow for Students

### Initial Setup (Week 1)

1. Create your repo from the course template ("Use this template" → "Create a new repository"), or accept the GitHub Classroom link if your section uses it
2. Clone your repo locally
3. Open in VS Code
4. Familiarize yourself with the folder structure
5. **Enable GitHub Pages now, not at the end of the semester** (Settings → Pages → Source: Deploy from a branch → Branch: `main`, folder: `/ (root)` → Save). Once Lab 0 is pushed, it is live on the web — and so is every lab and project after it. Deployment becomes a routine part of each assignment, not a finals-week scramble.

Your live site root will be:
`https://[username].github.io/[repo-name]/`

### Weekly Lab Workflow

1. Pull latest (if working across machines): `git pull`
2. Navigate to `labs/` and create new folder: `lab-XX-name/`
3. Add `index.html`, `sketch.js`, `reflection.md`
4. Code, experiment, break things
5. Commit frequently with meaningful messages
6. Write reflection before the due date
7. Push to GitHub: `git push`

### Project Workflow

1. Navigate to `projects/` and find your project folder
2. Develop iteratively, committing often
3. Document process in `process/` folder (optional but encouraged)
4. Write artist statement in `README.md`
5. Push final version before critique
6. Be prepared to run code live in class

### End of Semester

1. Populate `portfolio/index.html` with links to your best work
2. Write your final reflection in `portfolio/reflection.md`
3. Confirm GitHub Pages is still serving (enabled back in Week 1) — your work has been live all semester
4. Submit your portfolio URL: `https://[username].github.io/[repo-name]/portfolio/`

---

## Git Basics

You need only a little Git. We cover it in Week 1 alongside Lab 0.

**Essential commands:**
```bash
git clone [url]          # Get the repo (once, at start)
git pull                 # Download any changes
git add .                # Stage all changes
git commit -m "message"  # Save snapshot
git push                 # Upload to GitHub
```

**GUI Alternative:** You can use GitHub Desktop or VS Code's built-in Source Control panel to avoid command line entirely. Both work well for this workflow.

**Commit message tips:**
- Describe what changed: "Add color variation to grid"
- Note experiments: "Try noise instead of random"
- Mark milestones: "Complete Lab 3 reflection"

---

## GitHub Pages Setup

You enable GitHub Pages **once, in Week 1**, and it serves your work for the rest of the semester.

1. Go to repo Settings → Pages
2. Source: Deploy from a branch
3. Branch: `main`, folder: **`/ (root)`**
4. Save

**Serve from the repo root, not `/portfolio`.** GitHub Pages' branch-source menu only offers `/ (root)` or `/docs` — an arbitrary subfolder like `/portfolio` is not selectable. Serving from root is also what makes *every* lab and project live, not just the portfolio.

### URL structure

With root serving, everything is reachable by its folder path:

| Work | Live URL |
|------|----------|
| Repo root | `https://[username].github.io/[repo-name]/` |
| Final portfolio | `https://[username].github.io/[repo-name]/portfolio/` |
| Any lab | `https://[username].github.io/[repo-name]/labs/lab-03-controlled-randomness/` |
| Any project | `https://[username].github.io/[repo-name]/projects/project-01-self-portrait/` |

A URL resolves to a folder only if that folder contains an `index.html`. (Optionally, add an `index.html` at the repo root that links to all work — a semester-long landing page.)

### Troubleshooting (the common failures)

- **Blank page / 404 right after enabling:** Pages can take 1–2 minutes to build and publish the first time. Wait, then hard-refresh.
- **404 on a sketch folder:** that folder is missing an `index.html`, or the URL doesn't match the folder name.
- **Works locally, blank when live:** almost always a **case-sensitivity** mismatch. GitHub Pages is case-sensitive; `Sketch.js` referenced as `sketch.js` fails on the server though it worked on macOS/Windows. Match capitalization exactly.
- **Sketch loads but is empty:** open the browser console (F12). A failed `<script src>` path or a missing library tag is the usual cause.
- **Old version showing:** the browser cached it — hard-refresh (Cmd/Ctrl+Shift+R), and confirm the latest commit was actually pushed.
