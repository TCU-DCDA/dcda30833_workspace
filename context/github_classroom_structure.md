# GitHub Classroom Structure for DCDA 30833

This document outlines the recommended repository structure and workflow for using GitHub Classroom with Creative Coding for the Humanities.

---

## Overview

Given the course's ungrading philosophy and emphasis on process over product, we use a **single-repo model**:

- **1 Course Repository** per student (all labs, projects, and portfolio in one place)

This minimizes overhead, shows the full semester arc in commit history, and naturally builds toward the final portfolio.

---

## Repository Structure

### Course Repository (1 per student)

**Template name:** `dcda30833`

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
- Can't use separate GitHub Classroom assignment links per project
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

The portfolio folder becomes the GitHub Pages root:
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
    <p>Creative Coding for the Humanities — Spring 2026</p>
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

## GitHub Classroom Setup

### Assignment Settings

**For Course repo:**
- Type: Individual
- Visibility: Public (recommended for peer viewing and critique)
- Starter code: `dcda30833` template
- Deadline: None (ongoing all semester)
- Autograding: Disabled

**Note:** With a single-repo model, you create one GitHub Classroom assignment at the start of the semester. Students accept once and use that repo for all work.

---

## Workflow for Students

### Initial Setup (Week 1)

1. Accept the GitHub Classroom assignment link
2. Clone your repo locally
3. Open in VS Code
4. Familiarize yourself with the folder structure

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
3. Enable GitHub Pages (Settings → Pages → Source: main branch)
4. Submit your portfolio URL

---

## Feedback Workflow for Instructor

### Option A: GitHub Issues (Recommended)
- Open an Issue on student's repo with feedback
- Use labels: `lab-feedback`, `project-feedback`, `question`
- Students can respond, creating threaded conversation
- Easy to track what's been reviewed

### Option B: Inline Comments
- Use GitHub's "Files changed" view to comment on specific lines
- Good for code-specific suggestions
- More granular than Issues

### Option C: Direct Commits (for minor fixes)
- For typos or small suggestions, commit directly to student's repo
- Use clear commit messages: "Instructor feedback: [description]"
- Reserve for quick fixes, not substantive feedback

**Recommendation:** Use Issues for substantive feedback (one Issue per lab/project), inline comments for specific code suggestions.

---

## Teaching Git Basics

Students need minimal Git literacy. Teach in Week 1 alongside Lab 0.

**Essential commands:**
```bash
git clone [url]          # Get the repo (once, at start)
git pull                 # Download any changes
git add .                # Stage all changes
git commit -m "message"  # Save snapshot
git push                 # Upload to GitHub
```

**GUI Alternative:** Students can use GitHub Desktop or VS Code's built-in Source Control panel to avoid command line entirely. Both work well for this workflow.

**Commit message tips for students:**
- Describe what changed: "Add color variation to grid"
- Note experiments: "Try noise instead of random"
- Mark milestones: "Complete Lab 3 reflection"

---

## GitHub Pages Setup

For the final portfolio, students enable GitHub Pages:

1. Go to repo Settings → Pages
2. Source: Deploy from a branch
3. Branch: `main`, folder: `/portfolio`
4. Save

Portfolio will be live at: `https://[username].github.io/dcda30833-[username]/`

**Note:** Individual sketches can also be accessed directly via GitHub Pages by navigating to their folder paths.

---

## Notes

- **Process visibility:** Commit history becomes part of the ungrading evidence. Encourage frequent, meaningful commits.
- **Public repos:** Enable peer learning and critique. Students can browse each other's code.
- **GitHub Pages:** Free hosting for final portfolio. Each lab/project can be viewed live.
- **No autograding:** Aligns with ungrading philosophy. Feedback is qualitative, not automated.
- **One assignment link:** Students accept once at semester start; no need to distribute new links per assignment.
