---
name: wa-cta-standard
description: Build contact CTA HTML blocks for articles in WordPress Classic Editor. Use for three site-branded visual variants with a user-confirmed destination and no hardcoded brand or contact defaults.
---

# Contact CTA Visual Standard

Use pure inline-style HTML without `wp:html` block comments. The output is for the WordPress Classic Editor Text tab.

Use the CTA destination and button label confirmed by `/convert`. It may point to WhatsApp, a contact form, email, booking page, or product page. Never hardcode or reuse contact details, credentials, or brand values.

## Color system

Derive every value from the target website or user-provided brand guide:

| Slot | Used for |
|---|---|
| `{accent}` | Eyebrow, border accent, button background |
| `{secondary-accent}` | Variant 2 eyebrow |
| `{dark-bg}` | Variant 2 background and light-variant headings |
| `{light-bg}` | Variant 1 and 3 background |
| `{body-text}` | Variant 1 and 3 body copy |
| `{muted-text}` | Variant 2 body copy |
| `{border}` | Variant 3 border |
| `{footer-text}` | Optional footer copy |

Resolve every token to an actual hex value before delivering HTML. Maintain readable text and button contrast. If a slot is unavailable, reuse the closest observed brand color or ask the user; never invent a brand color.

## Variant 1 — Light with border accent

Use after a mechanism or process explanation.

- Container: `background: {light-bg}; border-left: 4px solid {accent}; border-radius: 6px; padding: 24px 28px; margin: 32px 0;`
- Eyebrow: 13px uppercase, `color: {accent}`, weight 600
- Headline: 18px, weight 700, `color: {dark-bg}`
- Body: 14px, `color: {body-text}`
- Button: `background: {accent}; color: #fff; padding: 12px 24px; border-radius: 4px;` 14px, weight 600

## Variant 2 — Dark

Use after a problem, risk, or decision section resolves.

- Container: `background: {dark-bg}; border-radius: 6px; padding: 28px 32px; margin: 32px 0;`
- Eyebrow: 13px uppercase, `color: {secondary-accent}`, weight 600
- Headline: 20px, weight 700, `color: #ffffff`
- Body: 14px, `color: {muted-text}`
- Button: `background: {accent}; color: #fff; padding: 12px 24px; border-radius: 4px;` 14px, weight 600

## Variant 3 — Light, bordered, centered

Use at the natural close of the article.

- Container: `background: {light-bg}; border: 1px solid {border}; border-radius: 6px; padding: 28px 32px; margin: 32px 0; text-align: center;`
- Eyebrow: 13px uppercase, `color: {accent}`, weight 600
- Headline: 20px, weight 700, `color: {dark-bg}`
- Body: 14px, `color: {body-text}; max-width: 480px; margin: auto;`
- Button: `background: {accent}; color: #fff; padding: 14px 32px; border-radius: 4px;` 15px, weight 600
- Footer: optional 12px copy, `color: {footer-text}`; include credentials only when supplied and verified

## Rules

- Use at most three CTA blocks and only these variants.
- Reference the preceding section instead of using generic CTA filler.
- Escape or encode the confirmed destination correctly in the HTML.
- Deliver plaintext HTML with an implementation note.
- Never fabricate contact details, credentials, colors, products, or claims.
