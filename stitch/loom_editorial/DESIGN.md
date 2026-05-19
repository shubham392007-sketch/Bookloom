# Design System Strategy: The Digital Atelier

## 1. Overview & Creative North Star
This design system is built upon the Creative North Star of **"The Digital Atelier."** It treats the e-commerce experience not as a high-volume warehouse, but as a curated, quiet gallery where books are the protagonists. 

Moving beyond generic "flat" design, this system utilizes **Tonal Layering** and **Intentional Asymmetry**. We break the "template" look by avoiding rigid boxes and instead using expansive white space, overlapping imagery, and a sophisticated typographic scale. The goal is to create a sense of architectural permanence—design that feels "built" rather than "rendered."

---

## 2. Color & Surface Philosophy
The palette is a dialogue between warm, tactile neutrals and a sophisticated indigo. 

### The "No-Line" Rule
**Explicit Instruction:** 1px solid borders are strictly prohibited for sectioning or containment. 
Boundaries must be defined through:
1.  **Background Color Shifts:** Using the `surface-container` tiers.
2.  **Vertical Rhythm:** Generous whitespace (128px+) to define section endings.

### Surface Hierarchy & Nesting
Treat the UI as physical layers of fine paper. 
- **Base Layer:** `surface` (#f9f9f6) – The primary canvas.
- **Structural Sections:** `surface-container-low` (#f4f4f1) – For subtle differentiation of the footer or secondary content blocks.
- **Interactive Cards:** `surface-container-lowest` (#ffffff) – Used to "lift" product cards off the warm background.

### The "Glass & Gradient" Rule
To add "soul" to the digital interface:
- **Floating Elements:** Use `surface` colors at 80% opacity with a `backdrop-blur` of 20px for navigation bars and modals.
- **Signature CTAs:** Apply a subtle linear gradient to `primary` (#404dbe) buttons, transitioning from the top-left to a slightly deeper `primary_container` (#5a67d8) at the bottom-right. This prevents the "flat-vector" look of budget apps.

---

## 3. Typography
We utilize a dual-font strategy to balance editorial authority with functional clarity.

- **Display & Headlines (Manrope):** Chosen for its geometric precision and modern "Apple-esque" warmth. Use `display-lg` with tight letter-spacing (-0.02em) for hero moments to create a high-fashion, editorial feel.
- **Body & UI (Inter):** The workhorse. Its high x-height ensures maximum readability for book descriptions and metadata.
- **Hierarchy as Brand:** Use extreme contrast in scale. A `display-md` headline paired with a `body-sm` caption creates an "organized/designed" aesthetic that mimics premium print magazines.

---

## 4. Elevation & Depth
In this system, depth is a whisper, not a shout.

- **The Layering Principle:** Place a `surface-container-lowest` (#ffffff) card on a `surface-container-low` (#f4f4f1) background. This creates a natural "pop" without a single drop shadow.
- **Ambient Shadows:** When a shadow is necessary (e.g., a floating Cart sheet), use: `box-shadow: 0 20px 40px rgba(26, 28, 27, 0.05);`. The shadow color is a 5% opacity tint of `on_surface` to mimic natural light.
- **The "Ghost Border":** If accessibility requires a border, use `outline-variant` (#c6c5d5) at 15% opacity. Never use 100% opaque lines.
- **Glassmorphism:** Navigation menus should feel like frosted glass sheets hovering over the content, using `surface_bright` with transparency.

---

## 5. Components

### Buttons
- **Primary:** `primary` (#404dbe) fill, `on_primary` text. Radius: `full`. No shadow, but a subtle scale-down (0.98) on click.
- **Secondary:** `secondary_container` (#ece1d2) fill. This creates a tactile, beige "paper" look that feels premium.
- **Tertiary:** No background. Bold `primary` text. Radius: `md`.

### Cards & Product Grids
- **Construction:** Forbid divider lines. Separate product info from the image using 24px of whitespace.
- **Corners:** Use `xl` (1.5rem) for main product cards to emphasize the "soft/calm" atmosphere.
- **Interaction:** On hover, a card should not grow a shadow; instead, the image should subtly scale (1.05x) within its container.

### Input Fields
- **Styling:** `surface_container_highest` (#e2e3e0) background. No border. 
- **Focus State:** A 2px `primary` "Ghost Border" (20% opacity) that fades in softly.
- **Typography:** Labels use `label-md` in `on_surface_variant`.

### Signature Component: The "Editorial Curated Collection"
A horizontal scroll component where images overlap slightly and typography is placed asymmetrically. This breaks the "Shopify Grid" feel and leans into the "Digital Curator" persona.

---

## 6. Do's and Don'ts

### Do:
- **Embrace Whitespace:** If a section feels crowded, double the padding.
- **Use "Warm" Grays:** Always use the `on_surface` (#1a1c1b) for text rather than pure black to maintain the "warm off-white" atmosphere.
- **Soft Transitions:** All hover states and modal entries must use a `cubic-bezier(0.23, 1, 0.32, 1)` (Ease Out Quint) timing for a "luxury" feel.

### Don't:
- **No 1px Lines:** Do not use borders to separate items in a list. Use `surface-container` shifts or 16px vertical gaps.
- **No Heavy Shadows:** Never use shadows with an opacity higher than 10%.
- **No Sharp Corners:** Avoid the `none` or `sm` roundedness tokens unless for technical metadata.
- **No Pure White Backgrounds:** Pure `#FFFFFF` should only be used for floating cards/modals, never the main page background.