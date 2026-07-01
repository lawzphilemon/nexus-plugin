---
name: convert
description: Inject conversion layer (WhatsApp CTA + product upsell) into a finished article draft, using the target website's own brand colors
allowed-tools: WebFetch, WebSearch
---

# NEX-U — Upsell & Conversion Layer

**Mission:** Turn a finished article into a lead-generating asset by placing WhatsApp CTAs and soft product upsell content at the reader's natural reading pauses, styled to match the target website's own brand colors, without breaking GEO/SEO structure or compliance rules.

**Dependency:** Requires a finished article draft (ideally NEX-Fn output). If missing → "Paste the final draft, or run /finaldraft first."

Retrieve the `wa-cta-standard` and `product-upsell` skills before writing any output.

---

## Step 0 — Site Brand Detection

Ask for the target website domain if not already known from context (default `truemission.id`).

If the domain is `truemission.id` (or otherwise already known to use the TrueMission palette), skip fetching — use the TrueMission defaults directly from `wa-cta-standard`.

Otherwise:
1. WebFetch the site's homepage.
2. Identify the dominant brand colors from what's visible: header/nav background, primary button color, accent color used on links or highlights, body text color, page background.
3. Map what you find to the `wa-cta-standard` color slots (`{accent}`, `{dark-bg}`, `{light-bg}`, `{gold}`, `{body-text}`, `{muted-text}`, `{border}`, `{footer-text}`). Fill every slot you can identify confidently.
4. If a slot can't be confidently identified (e.g. no clear secondary accent), state which one is missing and either ask the user for it or reuse the closest analogous color already found — don't guess a color that wasn't actually observed.
5. Briefly confirm the detected palette with the user before proceeding (one line, e.g. "Detected [site]'s colors: accent #XXXXXX, background #XXXXXX — using these for the CTA blocks.").

---

## Step 1 — Locate Conversion Points

**If the outline used to write this draft tagged Conversion Points** (i.e. each H2 was marked `— Conversion point: [None / Variant 1 / Variant 2 / Variant 3]` at the NEX-O stage): use those positions exactly. Do not re-scan or second-guess them.

**If no Conversion Point tags exist** (draft came from outside the pipeline, or an older outline): scan the draft for the most natural reading pauses — points where a reader has just received a complete piece of value and would look up before continuing, not arbitrary section breaks. Typical spots, in order of strength:
- Right after a mechanism / "cara kerja" explanation finishes → Variant 1 (light)
- Right after an emotional or risk-relief moment (risk scenario, "bagaimana kalau terjadi") resolves → Variant 2 (dark)
- The natural close of the article, after the reader has everything they need → Variant 3 (light, centered)

A CTA mid-sentence, mid-list, or interrupting an unfinished thought is never natural — it must sit in the whitespace between one complete idea and the next. Never place inside a Direct Answer Block, a FAQ Q&A, or a Definition Box — these must stay self-contained per GEO rules. If fewer than 3 genuine pauses exist, use fewer. Do not pad to hit 3.

## Step 2 — Product Mapping

From the article topic and any RIPLAY data available in context, identify the relevant product (e.g. PCB88, PRUCritical Amanah).

Apply **Opsi A only**: a soft mention plus a short comparison table. Never write a hard promotional section.

Comparison table: `[Fitur] vs [tanpa proteksi] vs [dengan produk]` — max 4 rows, factual, no exaggeration, no fabricated numbers.

If UP (uang pertanggungan) is referenced, use the confirmed formula: `(average monthly expenses × 12) × 5 years`, framed via the 5-year survival rate clinical standard — never an income-replacement formula.

If no clear product fits the article topic, say so and skip Step 2 rather than forcing a mismatched product.

## Step 3 — CTA Copy + HTML Injection

Use the exact specs from the `wa-cta-standard` skill (three variants, inline-style HTML, WordPress Classic Editor Text-tab only).

Eyebrow/headline/body copy for each CTA must match the emotional beat of the section it sits in — never generic "hubungi sekarang" language. Reference the actual content just above it.

Never exceed 3 CTAs total per article, regardless of article length.

## Step 4 — Compliance Check

Before delivering, verify against the `product-upsell` skill:
- No guaranteed-approval or guaranteed-return claims
- Unit-link return disclaimer present if unit-link product mentioned
- 12-month waiting period note present if CI/health product mentioned
- No competitor bashing
- No political content
- Beneficiary-update reminder included if the article discusses life events (marriage, birth, divorce)

Fix any failure before delivering — never deliver non-compliant content.

## Output

Deliver the full article with CTA blocks inserted inline at their exact position, as plaintext HTML (Google Docs cannot render live HTML — this is expected).

Directly below each injected CTA block, add a one-line implementation note in brackets, e.g. `[Paste this block in WordPress Classic Editor → Text tab. Do not switch to Visual tab after pasting.]`

End with: "CTA placement done — [N] block(s) inserted. Paste to WordPress Classic Editor Text tab only."
