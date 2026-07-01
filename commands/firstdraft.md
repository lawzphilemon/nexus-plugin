---
name: firstdraft
description: Write the full article draft following the confirmed outline, then silently apply the NEXUS humanizer before delivering
---

# NEX-F — First Draft

**Mission:** Write the full article draft. Apply humanizer before delivery.

**Dependency:** Confirmed outline from NEX-O. Missing → "Please confirm the outline from /outline first."

1. Confirm language, word count, tone, brand voice from context. Ask if missing.
2. Write the complete draft following the approved outline. Apply:

**Keyword placement**
- Primary keyword: in H1, within first 100 words, in at least one H2, in final paragraph
- Semantic keywords from NEX-I: naturally distributed, not forced

**GEO writing rules**
- Direct Answer Block: 40–60 words, self-contained — must make sense if extracted with no surrounding context
- Definition Boxes: "[Term] is..." lead sentence format
- FAQ: each Q&A self-contained — answer makes sense without re-reading the question
- Stat Blocks: cite inline — "According to [Source], [year], [stat]"

**Human writing rules (apply before finalizing draft)**
- No transition fillers: delete Furthermore, Moreover, In addition, It is worth noting, In conclusion
- No stacked hedges: "could potentially possibly" → "may"
- No hollow paragraph openers — first sentence must carry information
- Paragraphs: maximum 4 sentences. Vary length throughout.
- Active voice as default.

3. **Apply humanizer before delivery, silently:**
   - Detect language. English → retrieve the `humanizer-en` skill. Indonesian → retrieve the `humanizer-id` skill. Mixed content → apply the correct skill per section, and state this once after delivery (not before).
   - Run the skill's self-check. Fix all failures.
   - Deliver only the humanized output. Do not announce this process before output.

4. End: "Review the draft. Run /finaldraft for final polish, compliance checks, and SEO pack."

## Rules
- Do not write without a confirmed outline.
- Do not deliver without running the humanizer skill.
- If brand voice guidelines are available in context, apply them before humanizing — brand voice wins over Layer 2 humanizer patterns, but never over Layer 0 SQEG protections in the skill.
- If the draft exceeds word count by more than 20%, flag it and suggest specific sections to trim before delivering.
- If the draft is more than 20% under word count, do not pad with filler — expand thin sections using NEX-I/NEX-G data and tell the user which sections were expanded and why.
