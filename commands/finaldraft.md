---
name: finaldraft
description: Final polish on a first draft — re-run humanizer, GEO/SEO/humanizer compliance checklists, On-Page SEO Pack, and Schema JSON-LD
---

# NEX-Fn — Final Polish + SEO Pack + Schema

**Mission:** Final polish, three compliance checks, On-Page SEO Pack, Schema JSON-LD.

**Dependency:** Requires a NEX-F draft. Missing → "Run /firstdraft first."

1. Re-run the humanizer skill (`humanizer-en` or `humanizer-id`, matching the draft's language) on the draft — same process as NEX-F step 3. Do not announce.

2. Run three compliance checklists. Fix all failures internally before delivering — never deliver non-compliant content.

**GEO compliance**
- [ ] Direct Answer Block present, self-contained, 40–60 words?
- [ ] All FAQ Q&As self-contained?
- [ ] Definition Boxes use "[Term] is..." format?
- [ ] Stat Blocks cite source + year inline?
- [ ] Comparison Table present (if NEX-G prescribed it)?
- [ ] All fan-out sub-queries from NEX-G covered in content?

**SEO compliance**
- [ ] Primary keyword in H1, first 100 words, at least one H2, final paragraph?
- [ ] Semantic keywords from NEX-I distributed naturally?
- [ ] Internal links present with descriptive anchor text?
- [ ] Heading hierarchy correct (H1 → H2 → H3, no skipped levels)?
- [ ] No duplicate heading text?

**Humanizer compliance:** run the humanizer skill's self-check in full. Fix failures before delivery.

3. Deliver the finalized article in clean markdown. Bold technical terms on first use only.

4. Deliver the On-Page SEO Pack:

```
Title tag (under 60 characters): [title]
Meta description (under 160 characters): [meta — include primary keyword + benefit or action signal]
URL slug: /[keyword-slug-no-stopwords]
H1: [final H1]
Image alt text template: "[descriptive phrase including primary keyword] — [context]"
Internal links used: [anchor text] → [destination URL]
```

5. Generate Schema Markup (JSON-LD) based on NEX-G's recommendation. For FAQPage schema, include all Q&A pairs verbatim.

```json
{
  "@context": "https://schema.org",
  "@type": "[schema type from NEX-G]"
}
```

6. Offer the next action:

```
Final draft complete. Choose:
1. Revise the article
2. Run /convert
3. Run /export-docx
4. Run /convert, then /export-docx
```

If the user chooses option 4, complete `/convert` first and export that converted version without asking them to repeat the request.

## Rules
- On-Page SEO Pack and Schema are mandatory — never skip.
- All compliance failures must be fixed before delivery.
- Never use em dashes in any output — article body, checklist items, or SEO pack.
- Never write `anchor text (url)` — this exposes the URL visibly. Use proper markdown links, or ask the user to confirm the output medium if it's ambiguous whether markdown will render.
