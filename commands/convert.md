---
name: convert
description: Add site-branded contact CTAs and factual product or service mentions to a finished article
allowed-tools: WebFetch, WebSearch
---

# NEX-U — Conversion Layer

**Mission:** Turn a finished article into a lead-generating asset by adding relevant contact CTAs and optional product or service mentions at natural reading pauses, without breaking GEO/SEO structure or making unsupported claims.

**Dependency:** Requires a finished article draft, ideally NEX-Fn output. If missing: "Paste the final draft, or run /finaldraft first."

Retrieve the `wa-cta-standard` and `product-upsell` skills before writing any output.

## Step 0 — Confirm conversion inputs

Confirm these inputs from context or ask for them:

1. **Target website domain** for brand-color detection.
2. **CTA destination and button label**, such as a WhatsApp link, contact form, email link, booking page, or product page.
3. **Offer details**, if a product or service should be mentioned: name, audience, verified features, evidence, restrictions, and approved claims.

Never invent or reuse a domain, contact destination, brand palette, credential, product detail, price, or claim.

### Brand-color detection

1. WebFetch the website homepage.
2. Identify visible colors used for navigation, primary buttons, accents, text, backgrounds, and borders.
3. Map them to the `wa-cta-standard` color slots.
4. If a required color cannot be identified confidently, ask the user for it or reuse the closest observed color while preserving readable contrast. Do not invent a brand color.
5. Confirm the palette and CTA destination in one line before proceeding.

## Step 1 — Locate conversion points

If the outline contains `Conversion point: [None / Variant 1 / Variant 2 / Variant 3]` tags, use those positions exactly.

If tags are absent, select only natural pauses where a reader has just received a complete piece of value:

- After a mechanism or process explanation: Variant 1.
- After a problem, risk, or decision section resolves: Variant 2.
- At the natural close of the article: Variant 3.

Never place a CTA mid-sentence, mid-list, inside a Direct Answer Block, FAQ answer, Definition Box, metadata section, or schema. Use fewer than three CTAs when fewer than three genuine pauses exist.

## Step 2 — Map the offer

Follow `product-upsell` using only verified offer details from Step 0.

- Add one soft, factual sentence connecting the offer to the section above.
- Add a short comparison table only when the supplied data supports it.
- If offer details are missing, ask for them or skip the offer mention and insert CTAs only.
- For regulated or high-stakes topics, use current authoritative sources and include required qualifications or disclaimers. If those inputs are unavailable, do not publish the claim.

## Step 3 — Write and inject CTA blocks

Follow `wa-cta-standard` for the three HTML variants. Match each block's copy to the section immediately above it. Use the confirmed CTA destination and button label.

Never exceed three CTA blocks per article.

## Step 4 — Validate

Before delivery, verify:

- No fabricated claims, prices, statistics, testimonials, credentials, or product details.
- No guaranteed outcomes or unsupported comparisons.
- Every link and color comes from confirmed input or the target website.
- Regulated claims include the required source, qualification, and disclaimer.
- The article's GEO/SEO structure, On-Page SEO Pack, and Schema Markup remain unchanged.

Fix every failure before delivery.

## Output

Deliver the full article with CTA blocks inserted as plaintext HTML at their exact positions.

Preserve the On-Page SEO Pack and Schema Markup from NEX-Fn unchanged after the article.

Directly below each CTA block, add:

`[Paste this block in WordPress Classic Editor → Text tab. Do not switch to Visual tab after pasting.]`

End with: "CTA placement done — [N] block(s) inserted. Run /export-docx to export this converted version."
