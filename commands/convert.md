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

## Step 0 — Site, Contact & Vertical Detection

Ask for (or confirm from context) three things if not already known:
1. **Target website domain.** If it's `truemission.id`, skip color fetching — use the TrueMission defaults directly. Otherwise WebFetch the homepage and extract brand colors as below.
2. **Contact channel for the CTA button** — the link and pre-filled message text. Default to TrueMission's own WhatsApp link (below) *only* if this is confirmed to be a TrueMission/Prudential article. For any other client, ask for their contact link and preferred pre-filled text — never reuse TrueMission's number for another client.
3. **Client vertical** — is this an insurance/Prudential client, or a different industry? This determines whether Step 2 uses the full `product-upsell` skill (insurance-specific: Opsi A, UP formula, RIPLAY, insurance compliance checklist) or a generic soft-mention fallback.

TrueMission default contact link (use only when confirmed as TrueMission/Prudential):
```
https://api.whatsapp.com/send?phone=6281908414041&text=Salam%20Lawrence%2C%20Aku%20mau%20tanya-tanya%20dulu%20dong%20soal%20asuransi%20Prudential...
```

### Brand color detection
1. WebFetch the site's homepage.
2. Identify the dominant brand colors from what's visible: header/nav background, primary button color, accent color used on links or highlights, body text color, page background.
3. Map what you find to the `wa-cta-standard` color slots (`{accent}`, `{dark-bg}`, `{light-bg}`, `{gold}`, `{body-text}`, `{muted-text}`, `{border}`, `{footer-text}`). Fill every slot you can identify confidently.
4. If a slot can't be confidently identified (e.g. no clear secondary accent), state which one is missing and either ask the user for it or reuse the closest analogous color already found — don't guess a color that wasn't actually observed.
5. Briefly confirm the detected palette and contact link with the user before proceeding (one line, e.g. "Detected [site]'s colors: accent #XXXXXX, background #XXXXXX. Using [contact link] as the CTA destination.").

---

## Step 1 — Locate Conversion Points

**If the outline used to write this draft tagged Conversion Points** (i.e. each H2 was marked `— Conversion point: [None / Variant 1 / Variant 2 / Variant 3]` at the NEX-O stage): use those positions exactly. Do not re-scan or second-guess them.

**If no Conversion Point tags exist** (draft came from outside the pipeline, or an older outline): scan the draft for the most natural reading pauses — points where a reader has just received a complete piece of value and would look up before continuing, not arbitrary section breaks. Typical spots, in order of strength:
- Right after a mechanism / "cara kerja" explanation finishes → Variant 1 (light)
- Right after an emotional or risk-relief moment (risk scenario, "bagaimana kalau terjadi") resolves → Variant 2 (dark)
- The natural close of the article, after the reader has everything they need → Variant 3 (light, centered)

A CTA mid-sentence, mid-list, or interrupting an unfinished thought is never natural — it must sit in the whitespace between one complete idea and the next. Never place inside a Direct Answer Block, a FAQ Q&A, or a Definition Box — these must stay self-contained per GEO rules. If fewer than 3 genuine pauses exist, use fewer. Do not pad to hit 3.

## Step 2 — Product Mapping

**If this is an insurance/Prudential client** (per the vertical confirmed in Step 0): retrieve and follow the `product-upsell` skill in full — Opsi A framing (soft mention + comparison table), the confirmed UP formula, RIPLAY as the data source, and its compliance checklist. Nothing in this branch changes from that skill.

**If this is a different industry**: write a lighter generic version instead —
- One soft, factual sentence mentioning the relevant product/service, tied to what the article just covered — never a hard sales pitch.
- An optional short comparison (max 4 rows) only if the user has supplied real product/service details in context — never fabricate features, pricing, or claims.
- If no product/service info is available in context, ask the user for it rather than guessing, or skip Step 2 entirely if they'd rather just run CTA placement without a product mention.
- Skip the insurance-specific compliance items (UP formula, unit-link disclaimer, waiting period) — those don't apply outside insurance content. Still apply general honesty rules: no guaranteed outcomes, no fabricated stats or testimonials, no competitor bashing.

## Step 3 — CTA Copy + HTML Injection

Use the exact specs from the `wa-cta-standard` skill (three variants, inline-style HTML, WordPress Classic Editor Text-tab only).

Eyebrow/headline/body copy for each CTA must match the emotional beat of the section it sits in — never generic "hubungi sekarang" language. Reference the actual content just above it.

Never exceed 3 CTAs total per article, regardless of article length.

## Step 4 — Compliance Check

**If insurance/Prudential client**: verify against the full `product-upsell` skill checklist (guaranteed-approval claims, unit-link disclaimer, 12-month waiting period, competitor bashing, political content, beneficiary-update reminder). Fix any failure before delivering.

**If other industry**: verify the general rules still apply — no guaranteed outcomes, no fabricated stats/testimonials, no competitor bashing, no political content. Fix any failure before delivering.

Never deliver non-compliant content in either case.

## Output

Deliver the full article with CTA blocks inserted inline at their exact position, as plaintext HTML (Google Docs cannot render live HTML — this is expected).

Directly below each injected CTA block, add a one-line implementation note in brackets, e.g. `[Paste this block in WordPress Classic Editor → Text tab. Do not switch to Visual tab after pasting.]`

End with: "CTA placement done — [N] block(s) inserted. Paste to WordPress Classic Editor Text tab only."
