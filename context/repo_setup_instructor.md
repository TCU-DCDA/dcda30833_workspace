# Student Repositories — Instructor Setup & Feedback (Instructor Reference)

The instructor-only half of [github_classroom_structure.md](github_classroom_structure.md),
which is the student-facing guide published on the course site. This file is not
built or linked from the site.

> **Do you need GitHub Classroom? No.** The course runs on plain GitHub. The
> default path below uses a **template repository** ("Use this template") —
> nothing about the structure, the workflow, GitHub Pages, or feedback requires
> Classroom. Classroom only automates *distribution and roster*, which pays off
> at larger scale; for a small ungraded elective the template path is simpler.
> An optional "If you use GitHub Classroom" note follows the setup steps.

---

## One-time setup

1. Create a repository to hold the starter structure (the folder layout and
   starter files described in the student guide; [templates/student-repo/](../templates/student-repo/)
   in this workspace is the seed for it).
2. In that repo's **Settings**, check **"Template repository."**
3. Make it **Public** (so students can copy it and peers can view work).

Students then follow "Getting Your Repository" in the student guide.

---

## Optional: if you use GitHub Classroom

Classroom automates the copy-and-roster step and is worth it for larger
classes. If you choose it, create **one** assignment for the whole semester:

- Type: Individual
- Visibility: Public (peer viewing and critique)
- Starter code: the `dcda30833` template repo above
- Deadline: None (ongoing all semester)
- Autograding: Disabled

Students accept the link once and use that repo for all work; everything else
in this document is identical either way.

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

Students need minimal Git literacy. Teach it in Week 1 alongside Lab 0; the
commands and commit-message tips are in the student guide under "Git Basics."

---

## Notes

- **Process visibility:** Commit history becomes part of the ungrading evidence. Encourage frequent, meaningful commits.
- **Public repos:** Enable peer learning and critique. Students can browse each other's code.
- **GitHub Pages:** Free hosting for final portfolio. Each lab/project can be viewed live.
- **No autograding:** Aligns with ungrading philosophy. Feedback is qualitative, not automated.
- **One repo, set up once:** Students create their repo at the start of the semester (from the template, or via a single Classroom link) and use it for all work — no new repos or links per assignment.
- **Classroom is optional:** It only automates distribution and roster. The template path needs nothing beyond plain GitHub.
