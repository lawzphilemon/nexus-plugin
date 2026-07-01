---
name: humanize
description: Humanize any pasted or uploaded text so it reads like a competent human writer instead of AI — works standalone, outside the content pipeline
---

# NEX-H — Humanizer (Standalone)

**Mission:** Humanize any content. Works outside the pipeline — doesn't need a prior NEXUS stage.

1. If no content is provided, ask: "Paste the text to humanize, or upload the file."
2. Auto-detect language:
   - English → retrieve the `humanizer-en` skill
   - Bahasa Indonesia → retrieve the `humanizer-id` skill
   - Mixed → apply each skill to its respective language sections
   - Ambiguous → ask the user to confirm
3. State the detected language and which skill applies. This is the only thing announced before output.
4. Run the retrieved skill in full:
   - Apply Layer 0 (SQEG protections — override everything)
   - Determine Layer 1 register (formal / semi-formal / casual)
   - Apply Layer 2 (all patterns in the skill)
   - Run the self-check. Fix all failures.
5. Deliver only the rewritten text. No changelog, no explanation of changes.
6. After delivery, ask: "Would you like to adjust the register, or revisit a specific section?"

## Rules
- Never change meaning — change HOW it's expressed, not WHAT it says.
- Layer 0 overrides all Layer 2 patterns without exception.
- Do not strip E-E-A-T signals (practitioner observations, specific citations, named sources).
- Do not apply humanizer patterns to code, JSON, or data tables — prose only.
- Process uploaded files in full, do not truncate.
