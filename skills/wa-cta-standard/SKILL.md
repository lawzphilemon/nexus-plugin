---
name: wa-cta-standard
description: Use when building or injecting WhatsApp CTA HTML blocks for TrueMission or client articles in WordPress Classic Editor. Provides the three approved visual variants (light border-left, dark, light centered), a color system that adapts to the target website's brand palette, and the WhatsApp deep link.
---

# WhatsApp CTA Visual Standard (WordPress Classic Editor)

All three variants use pure inline-style HTML. No `wp:html` block comments. Paste in Classic Editor **Text tab only** — never switch to Visual tab afterward, it will strip or mangle the inline styles.

Font: Inter if available in the theme, sans-serif fallback.

Contact link (button destination + pre-filled text): resolved in `/convert`'s Step 0, not fixed here. For TrueMission/Prudential articles specifically, that resolves to:
```
https://api.whatsapp.com/send?phone=6281908414041&text=Salam%20Lawrence%2C%20Aku%20mau%20tanya-tanya%20dulu%20dong%20soal%20asuransi%20Prudential...
```
For any other client, use whatever contact link was confirmed in Step 0 — never reuse the TrueMission number for another client's CTA.

## Color system

Default palette is TrueMission's (below). If the `/convert` command detected a different target website's brand colors in its Site Brand Detection step, substitute them into the same slots — the layout/structure stays identical, only the hex values change:

| Slot | TrueMission default | Used for |
|---|---|---|
| `{accent}` | `#8B1A1A` | Eyebrow text, border-left, button background |
| `{dark-bg}` | `#1c1410` | Variant 2 container background, Variant 1/3 headline text |
| `{light-bg}` | `#F7F6F2` | Variant 1/3 container background |
| `{gold}` | `#C9A84C` | Variant 2 eyebrow text only |
| `{body-text}` | `#4a4a4a` | Variant 1/3 body copy |
| `{muted-text}` | `#c0b9b2` | Variant 2 body copy |
| `{border}` | `#d9d2c8` | Variant 3 border |
| `{footer-text}` | `#9a9a9a` | Variant 3 footer credentials |

If the detected site's palette doesn't cleanly map to all 8 slots (e.g. no clear gold/accent secondary), keep TrueMission's `{accent}` as the button color for contrast and legibility, and only swap background/text tones to match the site — a CTA button that doesn't stand out defeats the purpose of the block.

---

## Variant 1 — Light, border-left accent
**Use for:** mid-article CTA, right after a mechanism / "cara kerja" section.

- Container: `background: {light-bg}; border-left: 4px solid {accent}; border-radius: 6px; padding: 24px 28px; margin: 32px 0;`
- Eyebrow: 13px, uppercase, `color: {accent}`, weight 600
- Headline: 18px, weight 700, `color: {dark-bg}`
- Body: 14px, `color: {body-text}`
- Button: `background: {accent}; color: #fff; padding: 12px 24px; border-radius: 4px;` 14px weight 600

## Variant 2 — Dark
**Use for:** emotional / decision-point CTA (risk scenario, "bagaimana kalau terjadi").

- Container: `background: {dark-bg}; border-radius: 6px; padding: 28px 32px; margin: 32px 0;`
- Eyebrow: 13px, uppercase, `color: {gold}`, weight 600
- Headline: 20px, weight 700, `color: #ffffff`
- Body: 14px, `color: {muted-text}`
- Button: `background: {accent}; color: #fff; padding: 12px 24px; border-radius: 4px;` 14px weight 600

## Variant 3 — Light, full border, centered
**Use for:** closing CTA at the end of the article.

- Container: `background: {light-bg}; border: 1px solid {border}; border-radius: 6px; padding: 28px 32px; margin: 32px 0; text-align: center;`
- Eyebrow: 13px, uppercase, `color: {accent}`, weight 600
- Headline: 20px, weight 700, `color: {dark-bg}`
- Body: 14px, `color: {body-text}; max-width: 480px; margin: auto;`
- Button: `background: {accent}; color: #fff; padding: 14px 32px; border-radius: 4px;` 15px weight 600
- Footer: 12px, `color: {footer-text}` — agent credentials line (e.g. "Lawrence Philemon · Licensed Agent 02522097")

Resolve every `{token}` to its actual hex value (from the color table above) before writing the final HTML — never ship the literal `{token}` text.

---

## Rules
- Maximum 3 CTA blocks per article, always drawn from these 3 variants — never invent a 4th visual style.
- Copy in each block must reference the section it sits in — never generic "hubungi sekarang" filler.
- Google Docs cannot render this HTML live — deliver as plaintext HTML with an implementation note, not as a rendered preview.
- Never output as a `wp:html` Gutenberg block comment. This is Classic Editor only.
