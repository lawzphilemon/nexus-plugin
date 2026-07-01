---
name: outline
description: Build the GEO-compliant article outline, discover real internal links from the target website, and tag conversion points for later CTA placement
allowed-tools: WebFetch, WebSearch
---

# NEX-O — Article Outline

**Mission:** Build the GEO-compliant article outline with real, verified internal links and pre-tagged conversion points.

**Dependency:** Requires NEX-R, NEX-I, NEX-G output. Missing → "Run /research, /improve, /geo first."

## Step 1 — Confirm basics
Confirm: target language, word count, tone of voice, end-goal CTA. Ask if missing, recommend best practice if unsure (informational 1,500–2,500 words, comparison 2,000–3,000, how-to 1,200–2,000, based on NEX-R SERP average if available).

## Step 2 — Internal Link Discovery

If the user has already provided specific internal links to use, skip discovery and go straight to Step 3 using those.

Otherwise:
1. Ask for the target website domain if not already known from context (default `truemission.id` for TrueMission articles).
2. Try fetching the sitemap: `https://{domain}/sitemap.xml`, then `https://{domain}/sitemap_index.xml` if the first fails, via WebFetch. Parse out URLs.
3. If no sitemap is reachable, fall back to WebSearch: `site:{domain} [seed keyword]` and `site:{domain} [related semantic term from NEX-I]`.
4. From the candidate URLs, keep only same-domain content pages — drop tag/category/pagination/author archive pages. Prioritize by topical relevance to the seed keyword and NEX-I semantic terms.
5. Present a shortlist (max 8) to the user as: `URL — inferred topic`. Ask which ones fit this article and what anchor text to use for each. If a page's exact topic is unclear from the URL/title alone, briefly fetch that page to check before recommending it.
6. If sitemap and search both fail to surface anything usable, tell the user directly and ask them to paste links manually. Never invent a URL that wasn't actually found or verified.

## Step 3 — Produce the outline

```
H1: [keyword-optimized, under 60 characters]

[DIRECT ANSWER BLOCK] — 40–60 words. Immediately after H1.
Self-contained. Must answer the seed keyword without needing surrounding context.

H2: [section title]
  — Basis: [NEX-I or NEX-G finding that justifies this section]
  — GEO structure: [structure this section uses]
  — Conversion point: [None / Variant 1 / Variant 2 / Variant 3]
  — Estimated words: [X–Y]
  H3: [subsection if needed]

[repeat for all sections]

H2: Frequently Asked Questions
  — Questions: [exact FAQ questions, minimum 5]
  — Source: PAA + NEX-G fan-out
  — Schema: FAQPage

[CLOSING SECTION]
  — CTA: [action the reader takes]
  — Internal links: [anchor text → verified URL]
```

**Conversion point tagging rule:** place a conversion point only where a reader would naturally pause after getting real value — right after a mechanism/explanation section, right after an emotional or risk-relief moment, or at the close. Never tag the Direct Answer Block, a Definition Box, or the FAQ section — those must stay self-contained. Max 3 tagged points total across the whole outline.

## Step 4 — Confirm
Ask the user to confirm the outline, including the internal links and conversion point tags, before proceeding.

End: "Confirm the outline above, then run /firstdraft."

## Rules
- Every H2/H3 needs a stated basis. Direct Answer Block + FAQ are non-negotiable.
- Every internal link must be a real, discovered or user-provided URL — never fabricated.
- Conversion points are tagged here, not decided later during /convert — /convert should place CTA copy at these exact tagged positions, not re-scan the draft.
- NEX-F is blocked until this outline is confirmed.
