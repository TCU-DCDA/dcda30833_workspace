# Creative Coding, Spring 2027 — Planning Notes

**Status:** exploratory. Nothing here is committed.
**Assumed shape of the course:** overlapping units on text, image, and sound.

---

## Part I — WebGPU

### What it is

A W3C JavaScript API that exposes the system GPU through Vulkan, Metal, or Direct3D 12, for
both **rendering and compute**. It is the successor to WebGL, which was constrained by its
origins in OpenGL ES 2.0 — a 2007 design that predates modern GPU architecture.

The compute half is the real departure. WebGL could rasterize; WebGPU can run general
parallel computation. That is why WebGPU turns up in browser-side ML conversations as often
as in 3D graphics ones.

Note: it is **not** CSS. It's a graphics API. (Filed here because it kept getting shelved next
to "recent web platform advances.")

### Browser support

| Browser | Status |
|---|---|
| Chrome / Edge | Since v113 (2023); most mature |
| Safari | macOS Tahoe 26, iOS 26, iPadOS 26, visionOS 26 — enabled by default, maps directly to Metal |
| Firefox | Default-on for Windows, then Apple Silicon macOS; sources disagree on exact version (141 vs. 147) |
| Firefox Linux / Android | In development; Android targeted late 2026 |

All four major desktop browsers shipped it by default as of late November 2025 — that's the
milestone that generated the coverage wave. Verify current numbers against
[caniuse](https://caniuse.com/webgpu) before relying on any of the above.

### p5.js WebGPU mode — the actual on-ramp

Raw WebGPU is hostile to a creative coding class: heavy boilerplate, plus WGSL as a whole
additional shading language to teach. The usable path is p5.

- WebGPU renderer began June 2025 (Dave Pagurek + contributors), shipped in the **p5.js 2.2**
  release.
- Loads as a core add-on — two script tags, `p5.js` plus `p5.webgpu.js`.
- Started as essentially a clone of WebGL mode, with WebGPU implementations of every bit of
  WebGL functionality.
- Main API wrinkle: **`createCanvas()` must be awaited**, because WebGPU is asynchronous.
- **p5.strands supports compute shaders** in WebGPU mode. Reference demo is Game of Life.
- p5.js 2.x became the editor default in July 2026 — no setup gymnastics for students.

**Cautions.** The renderer is still labeled experimental and has real gaps (instanced model
rendering, for one, was broken in WebGPU mode while working fine in WebGL). Design
assignments that degrade gracefully, or keep WebGL as the assignment substrate and WebGPU as
the where-this-is-going capstone.

**Alternative:** [q5.js](https://github.com/q5js/q5.js) — p5-adjacent, claims ~100x over p5.js
on its WebGPU renderer, automatic Canvas2D fallback with a console warning. But it changes
defaults (canvas origin at center, RGB in 0–1 float), which is a real teaching cost when
students are also reading p5 documentation.

### Links

- p5.js releases — https://github.com/processing/p5.js/releases
- Dave Pagurek, "WebGPU in p5.js" — https://www.davepagurek.com/blog/p5-webgpu/
- WebGPU implementation status — https://github.com/gpuweb/gpuweb/wiki/Implementation-Status
- web.dev announcement — https://web.dev/blog/webgpu-supported-major-browsers

---

## Part II — Compute as a course spine

The most useful thing WebGPU offers this particular course isn't 3D. It's a **shared
substrate** for all three units. Text, image, and sound are each buffers of numbers, and a
compute shader doesn't care which. That makes the overlap between units the point rather than
a scheduling artifact: the same parallel-processing move gets re-taught three times in three
materials.

### Shapes that fall out of that

**Transcoding as connective tissue.** Read an image's pixel rows as a waveform. Render a
text's character codes as a texture. Drive glyph deformation from an FFT bin. One piece per
unit, then a fourth that pipes one unit's output into another's input. The Game of Life
compute demo is the hello-world: a grid that could equally be pixels, samples, or characters.

**Text as geometry, not as DOM.** Once type is vertex data or an MSDF texture, concrete
poetry stops being CSS trickery and becomes something students can deform, flock, erode. This
is where the e-lit angle has the most to say and where most creative coding courses have the
least.

**Fields over objects.** A continuous field sampled, rather than a scene of things. A compute
shader is the native idiom, and it generalizes: color field, density field, semantic field
from embeddings, pressure field driving audio.

### Adjacent APIs worth considering

- **Web Serial** — the browser talking directly to an Arduino or pen plotter. Makes "output"
  mean paper, not just canvas. A good counterweight to a GPU-heavy semester, and it connects
  to the drawing-machine thread.
- **Transformers.js / WebNN** — small models running client-side. No API key, no cost, no data
  leaving the machine. For a text unit this is very different pedagogy than calling an API:
  students can watch the thing be small and wrong.

**Open question:** making-vs-critique balance. That determines whether the above are
assignments or provocations.

**Standing caution:** this list is additive. A semester is fifteen weeks. At least two of
these should be cut before the syllabus is written.

---

## Part III — Vocabulary for what datification leaves out

No settled single term. A cluster, differing by which part of the residue each names.

| Term | Source | What it names |
|---|---|---|
| **haecceity** | Duns Scotus | "Thisness" — what makes something *this* particular thing, not an instance of a type. Datification always classifies; haecceity can't be a class member. (Counterpart: *quiddity*, whatness, which datifies fine.) |
| **opacity** | Glissant, *droit à l'opacité* | The right not to be made transparent, legible, profiled. Reframes the remainder as a claim rather than a loss. Most current traction in critical data studies. |
| **punctum** | Barthes | The detail that pricks — unclassifiable, personal. Against *studium*, the coded culturally legible content. Studium is what a model trains on; punctum is definitionally what it misses. |
| **qualia** | phil. of mind | Subjective character of experience; resists third-person description. |
| **aura** | Benjamin | Here-and-now of the original, withering under reproduction. |
| **the Real** | Lacan | What resists symbolization absolutely. |
| **tacit knowledge** | Polanyi | We know more than we can tell. |
| **affect** | Massumi | Intensity that escapes capture in signification. Also *the analog* — continuous excess. |
| **the incomputable** | Parisi (from Chaitin) | — |

**For a class spanning text, image, and sound, the sharpest anchor may be the least fancy
one: aliasing.** Sampling has a literal, provable remainder — everything above Nyquist is not
merely lost but *unrecoverable*, and worse, it returns disguised as something else. A
mathematically exact model of what datification does, demonstrable in all three media in an
afternoon. Massumi's "the analog" is the theory-side name for the same thing.

If one word goes on a slide: **opacity**. It carries the politics, and unlike the others it's
a stance rather than a lament.

---

## Part IV — Wordsworth as a pipeline diagram

The 1800 Preface names three stages, not one. The famous half is the spontaneous overflow of
powerful feelings; the operative half is **emotion recollected in tranquillity**. Then it goes
further: the recollected feeling is contemplated until the tranquillity dissolves and a *new*
emotion arises — kindred to the original but not the same one, and genuinely present in the
mind now. The poem is made from that second emotion.

**The pipeline doesn't end in retrieval. It ends in synthesis.** The stored thing is never
played back; it's a conditioning signal used to generate something fresh that resembles it.
That's a generative model, not a database, and Wordsworth is explicit that the output is a
different object from the input.

### The usable distinction

> **Data is idempotent under reading. Memory isn't.**

Querying a record leaves the record unchanged — that property is what makes it data. Recalling
a memory rewrites it; reconsolidation research holds that the act of reading is always also a
write. Same content, behaving like data on the storage axis and refusing to on the access
axis. Not a fuzzy distinction — structural, and demonstrable in a class in ten minutes.

### The other smuggled-in constraint: mandatory latency

Tranquillity isn't incidental. It's a required cooling period; the pipeline can't be polled in
real time without degrading. No engineered system would impose that voluntarily — which makes
it a useful antidote to the assumption that lower latency is always better instrumentation.

### Observation and the bird's-eye view

If a system drifts on wall-clock time whether or not anyone is looking, observation isn't what
animates it — which frees observation to do something more specific than perturb. The
aggregate view is the **atemporal** one: the position outside the duration, where a life is a
completed shape rather than a moving edge. That's the position the recording-book traditions
assign to God and the angels, and in the Rosh Hashanah framing the book is not merely written
but *read* — the reading is the judgment. Any whole-life view inherits that structure whether
or not you want the theology.

Two mechanisms for how the overhead view changes what it views:

- **Hacking's looping effect of human kinds.** Classifications alter the people classified,
  who then no longer fit, so the classification gets revised, and so on. Anything that can see
  its own representation acquires something to live toward or against — a term that wasn't in
  the original.
- **Normalization.** Alone, a quality is just itself. Against a pool, it becomes a
  *deviation* — saturated compared to, viscous for its age. Datification's ideological work
  happens almost entirely at that step: converting an intrinsic quality into a position in a
  distribution.

**Zoom as an epistemic axis, not a visual one:** zoomed in, individual events with
particularity intact (punctum); zoomed out, regime changes and comparative position,
everything legible and nothing singular (studium). Same data, two incompatible objects. The
geographers' name for the resulting artifact is the *modifiable areal unit problem* —
statistics change with how you draw the boundaries, and no boundary is privileged.

---

## Loose ends

- Making-vs-critique balance for the course — undecided.
- Whether the theory thread (Parts III–IV) is a unit, a running seminar strand, or just
  instructor background.
- Whether WebGPU is a topic students discuss or a tool they build in.
- Which two of the Part II additions get cut.
