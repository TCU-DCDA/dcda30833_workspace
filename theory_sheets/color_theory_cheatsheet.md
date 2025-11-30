# 🎨 Color Theory Cheat Sheet for Creative Coding

A practical, coding-oriented introduction to color theory for students working with p5.js, CSS, and generative art.

---

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
