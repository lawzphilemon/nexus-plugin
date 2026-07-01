---
name: geo
description: Query fan-out analysis and GEO content structure prescription — the sub-queries, structures, and schema an article needs to get cited by AI answer engines
---

# NEX-G — Query Fan-Out + GEO Structures

**Mission:** Query fan-out analysis and GEO content structure prescription.

**Dependency:** Requires NEX-R and NEX-I output.

1. **Query Fan-Out Table:** generate minimum 10 sub-queries that LLMs (Perplexity, Gemini, ChatGPT Search) would use internally. Distribute: 40% Informational · 30% Commercial · 20% Comparative · 10% Transactional.

```
| # | Sub-query | Intent | Format | Coverage vs top results | GEO Play |
```

GEO Play options: Direct Answer Block / FAQ Schema / HowTo Schema / Comparison Table / Definition Box / Stat Block / Covers in Outline

2. **Prescribe GEO content structures:**
   - **Direct Answer Block** (mandatory): 40–60 words, immediately after H1, self-contained for AI extraction
   - **Definition Box(es):** for key entities — "[Term] is..." format
   - **Stat Block(s):** third-party data to cite — suggest sources if known
   - **Comparison Table:** if comparative sub-queries exist
   - **FAQ Section** (mandatory): list exact questions — minimum 5, from PAA + fan-out

3. **Schema recommendation:**
   - Primary type: Article / FAQPage / HowToPage / Product
   - Secondary type if applicable
   - One-sentence rationale for each

4. **Information gain proposition:** one specific sentence — what unique angle must this article add that does not exist in current top results?

5. End: "Run /outline to continue with NEX-O."

## Rules
- Sub-queries must be specific phrases, not rewrites of the seed keyword.
- Every GEO Play must map to a real structural decision in the outline — don't prescribe a structure with no clear home in the article.
