---
name: truemission-prudential
description: Apply the verified TrueMission brand profile and Prudential-specific sourcing and compliance rules. Use only when /convert-truemission is invoked for a TrueMission article; never load this context during general /convert work.
disable-model-invocation: true
---

# TrueMission and Prudential Conversion Profile

Apply this profile only after loading the general `/convert` workflow and `wa-cta-standard`.

## Fixed profile

- Website: `truemission.id`
- CTA destination:

```text
https://api.whatsapp.com/send?phone=6281908414041&text=Salam%20Lawrence%2C%20Aku%20mau%20tanya-tanya%20dulu%20dong%20soal%20asuransi%20Prudential...
```

- CTA channel: WhatsApp

Map the TrueMission palette to the generic CTA tokens:

| Token | Value |
|---|---|
| `{accent}` | `#8B1A1A` |
| `{secondary-accent}` | `#C9A84C` |
| `{dark-bg}` | `#1c1410` |
| `{light-bg}` | `#F7F6F2` |
| `{body-text}` | `#4a4a4a` |
| `{muted-text}` | `#c0b9b2` |
| `{border}` | `#d9d2c8` |
| `{footer-text}` | `#9a9a9a` |

Explicit user instructions override these defaults. Confirm any override before applying it.

## Prudential offer mapping

Use a soft factual mention tied to the article section. Add a comparison table only when the applicable RIPLAY supports every entry:

```text
| Fitur | Tanpa proteksi | Dengan [produk] |
```

Use at most four rows. Do not create a detached sales section or fabricate specifications, benefits, prices, eligibility, or claim outcomes.

Use this user-confirmed planning formula only when an UP estimate is requested:

```text
(rata-rata pengeluaran bulanan × 12) × 5 tahun
```

Describe it as a planning heuristic, not a clinical standard, official Prudential formula, guaranteed need, or financial recommendation.

## Sources and compliance

- Use the applicable, current RIPLAY for product specifications. If it is unavailable, ask for it or omit the product detail.
- Use current official Prudential or regulatory sources for claims that may have changed.
- Never guarantee policy issuance, claim approval, returns, savings, or medical outcomes.
- State that investment returns are not guaranteed when a unit-linked product is mentioned.
- State exclusions, waiting periods, eligibility, and limitations only as written in the applicable RIPLAY or policy document.
- Do not attribute repricing to a cause unless a current authoritative source supports it.
- Keep competitor comparisons factual, sourced, and non-disparaging.
- Include required qualifications and disclaimers before delivery.
- Include agent credentials only when the user confirms the current exact wording.

Preserve the final article's GEO/SEO structure, On-Page SEO Pack, and JSON-LD schema.
