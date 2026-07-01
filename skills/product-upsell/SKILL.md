---
name: product-upsell
description: Insurance/Prudential-specific skill. Use when mapping a Prudential product to an article for soft upsell, calculating UP (uang pertanggungan), or checking insurance-content compliance before publishing. Covers Opsi A framing, the confirmed UP formula, and mandatory disclaimers. Do not use for non-insurance clients — /convert falls back to a generic soft-mention approach for those.
---

# Product Upsell & Compliance Rules

## Framing — Opsi A only
Every product mention in article content follows Opsi A: a soft mention plus a short, factual comparison table. Never a hard promotional section, never a bulleted features-and-benefits sales pitch.

Comparison table format:
```
| Fitur | Tanpa proteksi | Dengan [produk] |
```
Max 4 rows. Every cell must be factual and traceable to RIPLAY data or general product mechanics — never fabricated numbers or benefits.

## UP (Uang Pertanggungan) calculation
Confirmed formula — use this one, not an income-replacement formula:
```
(rata-rata pengeluaran bulanan × 12) × 5 tahun
```
Frame this via the "5-year survival rate" clinical standard (globally recognized recovery/survival window for critical illness), not as a generic savings target.

## Product reference sources
Use RIPLAY documents as the data source for product specifications. If RIPLAY data is not available in context for the product being referenced, say so rather than filling in specs from memory.

## Mandatory compliance checks (run before delivery)
- Never guarantee claim approval without complete medical data
- Always state that unit-link returns are not guaranteed, if a unit-link product is mentioned
- Note the 12-month waiting period for relevant pre-existing/critical illness conditions, if the product/topic requires it
- Never bash a named competitor or competitor product
- Never discuss politics
- Repricing must be framed as medical inflation, not company profit
- If the article touches on life events (marriage, birth, divorce), include a reminder to update policy beneficiary

## CTA quantity
Max 3 WhatsApp CTAs per article, placed at natural decision points — this is enforced jointly with the `wa-cta-standard` skill, not repeated per product.
