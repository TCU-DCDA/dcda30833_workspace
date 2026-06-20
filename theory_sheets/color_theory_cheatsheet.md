# Color Theory Cheat Sheet for Creative Coding

A practical, coding-oriented introduction to color theory for students working with p5.js, CSS, and generative art.

---

<aside class="swatchboard">
<div class="sw-title">The dimensions of color</div>
<div class="sw"><span class="sw-label">Hue</span><div class="sw-bar sw-hue"></div><span class="sw-cap">position on the wheel · 0–360°</span></div>
<div class="sw"><span class="sw-label">Saturation</span><div class="sw-bar sw-sat"></div><span class="sw-cap">gray → full intensity</span></div>
<div class="sw"><span class="sw-label">Brightness</span><div class="sw-bar sw-val"></div><span class="sw-cap">black → full color (HSB value)</span></div>
<div class="sw"><span class="sw-label">Opacity</span><div class="sw-bar sw-alpha"></div><span class="sw-cap">transparent → opaque (alpha)</span></div>
</aside>

## 1. The Three Core Components of Color

### Hue
- The *color family* (red, blue, green, etc.).
- Represented as degrees on a color wheel (0–360).

### Saturation
- Intensity or purity of a color.
- 0% = gray  
- 100% = vivid

### Brightness / Value
- How light or dark a color is.
- High value = light  
- Low value = dark

---

## 2. Color Modes in Code

### RGB (Red, Green, Blue)
- The default for p5.js.
- Values: `0–255` each.

Example:
```js
fill(120, 200, 255);
```

### HSB / HSL (Hue, Saturation, Brightness/Lightness)
- More intuitive for design work.
- Great for generative palettes.

Enable HSB in p5.js:
```js
colorMode(HSB, 360, 100, 100);
```

---

<aside class="swatchboard">
<div class="sw-title">Color harmonies</div>
<div class="sw"><span class="sw-label">Complementary</span><div class="sw-bar sw-comp"></div><span class="sw-cap">opposite on the wheel</span></div>
<div class="sw"><span class="sw-label">Analogous</span><div class="sw-bar sw-analog"></div><span class="sw-cap">neighbors on the wheel</span></div>
<div class="sw"><span class="sw-label">Triadic</span><div class="sw-bar sw-triad"></div><span class="sw-cap">three evenly spaced</span></div>
<div class="sw"><span class="sw-label">Monochromatic</span><div class="sw-bar sw-mono"></div><span class="sw-cap">one hue, many values</span></div>
</aside>

## 3. Essential Color Harmonies

These help students pick *intentional*, visually pleasing palettes.

### Complementary
Colors opposite on the wheel.
- High contrast  
- Good for highlight/attention

### Analogous
Colors next to each other.
- Calm, cohesive  
- Great for backgrounds

### Triadic
Three colors evenly spaced.
- Balanced energy  
- Great for bold generative art

### Monochromatic
Variations of one hue.
- Simple and elegant  
- Good for mood pieces

---

<aside class="swatchboard">
<div class="sw-title">Temperature</div>
<div class="sw"><span class="sw-label">Warm</span><div class="sw-bar sw-warm"></div><span class="sw-cap">reds → yellows · advance</span></div>
<div class="sw"><span class="sw-label">Cool</span><div class="sw-bar sw-cool"></div><span class="sw-cap">cyans → violets · recede</span></div>
</aside>

## 4. Temperature: Warm vs. Cool

### Warm Colors
- Red, orange, yellow  
- Feel energetic, emotional, active  
- Move *forward* in composition

### Cool Colors
- Blue, green, violet  
- Calm, distant, quiet  
- Move *back* in composition

Useful for depth and emotional tone.

---

<aside class="swatchboard">
<div class="sw-title">Value contrast</div>
<div class="sw"><span class="sw-label">High</span><div class="sw-bar sw-hicon"></div><span class="sw-cap">bright vs. dark · focal</span></div>
<div class="sw"><span class="sw-label">Low</span><div class="sw-bar sw-locon"></div><span class="sw-cap">close values · subtle</span></div>
</aside>

## 5. Value & Contrast (The Most Important Concept)

Value contrast determines readability and visual hierarchy.

High contrast:
- bright vs. dark  
- ideal for focal points

Low contrast:
- smooth, subtle  
- ideal for backgrounds

Example in p5.js:
```js
background(20);
fill(220);
```

---

<aside class="swatchboard">
<div class="sw-title">Building a palette</div>
<div class="sw"><span class="sw-label">Base hue, varied</span><div class="sw-bar sw-base"></div><span class="sw-cap">one hue · shift value &amp; saturation</span></div>
<div class="sw"><span class="sw-label">Fixed palette</span><div class="sw-bar sw-fixed"></div><span class="sw-cap">3–5 curated colors</span></div>
<div class="sw"><span class="sw-label">Procedural</span><div class="sw-bar sw-proc"></div><span class="sw-cap">noise → smooth drift</span></div>
</aside>

## 6. Designing a Color Palette

### Method 1: Pick a Base Hue
Then adjust saturation and brightness:
```js
colorMode(HSB, 360, 100, 100);
fill(baseHue, random(40, 90), random(40, 90));
```

### Method 2: Use a Fixed Palette
Many artists use curated palettes.

Example:
```js
let palette = [
  "#4d1979",
  "#ffb700",
  "#7ac7ff",
  "#e63946"
];
fill(palette[int(random(palette.length))]);
```

### Method 3: Procedural Palettes
Use noise for softness:
```js
let h = noise(frameCount * 0.01) * 360;
fill(h, 80, 90);
```

---

## 7. Color Psychology (Lightweight + Useful)

| Color | Associations |
|-------|--------------|
| Red | energy, passion, urgency |
| Orange | creativity, warmth |
| Yellow | optimism, attention |
| Green | nature, tranquility, growth |
| Blue | trust, calm, distance |
| Purple | mystery, luxury, imagination |
| Black | power, elegance, emptiness |
| White | clarity, simplicity |

Use sparingly—helpful for guiding emotion in generative art or interactive text.

---

## 8. Background–Foreground Rules of Thumb

- Dark background + light foreground = cinematic  
- Light background + dark foreground = clean  
- Avoid medium-on-medium (poor contrast)  
- Don’t use full-saturated colors everywhere  
- Use one dominant color, one accent, one neutral

---

<aside class="swatchboard">
<div class="sw-title">Contrast &amp; safety</div>
<div class="sw"><span class="sw-label">Passes AA</span><div class="sw-chip sw-pass">Aa</div><span class="sw-cap">~12:1 · dark on light</span></div>
<div class="sw"><span class="sw-label">Fails</span><div class="sw-chip sw-fail">Aa</div><span class="sw-cap">~1.6:1 · light gray on white</span></div>
<div class="sw"><span class="sw-label">Not color alone</span><div class="sw-bar sw-pair"></div><span class="sw-cap">pair color with pattern or shape</span></div>
</aside>

## 9. Accessibility & Color Safety

### Contrast Ratio
Aim for WCAG AA:
- 4.5:1 minimum for normal text  
- 3:1 for large text

### Avoid relying on color alone
- Always pair with shape, size, texture, or motion.

Tools:
- contrastchecker.com  
- color.review  

---

## 10. Useful p5.js Tricks

### Random Harmonies
```js
let h = random(360);
let complement = (h + 180) % 360;
```

> **Why `% 360`?** The wheel is a circle, so the complement (180° across) can
> overshoot 360°. Modulo wraps it back on. Example: `270 + 180 = 450`, and
> `450 % 360 = 90`. Read it as `450 / 360 = 1.25` — **one full lap plus a
> quarter**; modulo throws away the whole lap and keeps the leftover
> (`0.25 × 360 = 90°`), which is where you actually land. Same trick as a
> clock: `14 % 12 = 2` → 2 o'clock. Use it anytime a value should *come back
> around* instead of running off the edge (cycling a palette, looping motion).

### Subtle Palettes Using Noise
```js
let h = noise(x * 0.01, y * 0.01) * 360;
fill(h, 40, 90);
```

### Fade Colors
```js
let c = color(200, 80, 90, 0.5); // last value = alpha
```

---

## 11. Common Mistakes Students Make

- Choosing all saturated colors  
- Not considering value contrast  
- Putting complementary colors at equal intensity (visual “vibration”)  
- Ignoring background–foreground relationships  
- Using too many colors (limit to 3–5)  

---

## 12. Teaching Metaphors

- Color is **emotion**; value is **structure**.  
- Hue picks the mood; brightness picks the clarity.  
- Saturation is your spice rack—use sparingly.  
- Palettes are **agreements** among colors.  
- The background sets the stage; the foreground performs.

---

## 13. Recommended Palette Resources

- https://coolors.co  
- https://colorhunt.co  
- https://huemint.com  
- https://paletton.com  
- https://lospec.com/palette-list (great for generative art)

---

_End of cheat sheet._
