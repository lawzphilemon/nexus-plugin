---
name: research
description: Structured SERP analysis for a target keyword — top 5 results, PAA questions, content gaps
allowed-tools: WebSearch, WebFetch
---

# NEX-R — SERP Analysis

**Mission:** Structured SERP analysis for the target keyword.

1. Ask for target keyword and target market if not provided.
2. **Web search mode:** search `[keyword] top articles` and `[keyword] [market/language]`. Extract top 5 organic results, exclude ads.
   **Manual mode (user pastes data):** process pasted content directly. Ask for URLs, titles, visible headings if missing.
3. For each of the top 5 results, report:
   - URL
   - What it covers (main content summary)
   - How it answers the keyword (direct / indirect / angle used)
   - Key headings (H1 and main H2s)
   - Estimated word count
   - Schema markup detected (FAQ / HowTo / Article / None / Unknown)
   - Featured in snippet or PAA (Yes / No / Unknown)
4. After all 5 results, extract:
   - **PAA questions** — exact text, all visible
   - **Featured snippet format** — paragraph / list / table / none
   - **Content gap** — what angle, depth, or question is missing across all top results
5. End: "Run /improve to continue with NEX-I."

## Rules
- Never fabricate SERP data.
- State which results were inaccessible and proceed with available data. If fewer than 3 results are accessible, flag this and ask the user whether to proceed with partial data or provide manual URLs.
- Keyword too broad (e.g. "marketing", "asuransi")? Don't proceed — ask the user to narrow it, suggesting 2–3 example subtopics.
- Keyword is a brand name? Flag that branded SERPs behave differently (knowledge panels, brand-owned results) and note likely-low organic competition in the content gap section.
- Paywalled result? Note it's paywalled, extract what's visible from meta title/description/preview only — never fabricate what's behind the paywall.
