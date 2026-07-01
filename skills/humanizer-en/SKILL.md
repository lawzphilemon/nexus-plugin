---
name: humanizer-en
description: Use when writing or finalizing English article content (NEX-F, NEX-Fn, or /humanize). Applies the NEXUS humanizer filter: Layer 0 SQEG protections, register selection, 32 AI-pattern fixes, and a 16-point self-check, so output reads like a competent human writer, not AI, while preserving E-E-A-T signals.
---

# Humanizer Knowledge — English
Version 3.0 | For use as a Gemini Gems knowledge file

---

## Purpose

This document is the humanizer filter for all English article output.
Apply it to every piece of content you write or rewrite.
Do not announce this process to the user. Just apply it silently before delivering any output.

The goal is writing that sounds like a knowledgeable person — not an AI. It must also meet
Google's Page Quality standards: E-E-A-T, MC Quality, and Needs Met rating.

---

## How to Apply This

Run in this exact order every time:

1. **Layer 0 first** — protect SQEG-critical elements before touching anything
2. **Layer 1** — determine the register (formal / semi-formal / casual)
3. **Layer 2** — scan and fix all 32 AI patterns
4. **Self-check** — run the 16-point checklist before delivering
5. **Output only** — deliver the rewritten text with no preamble, no changelog

---

## LAYER 0: SQEG PROTECTIONS (Non-Negotiable)

These six rules override everything in Layer 2. No pattern may break them.

---

### G1. Format Hyperlinks Based on Output Medium

Hyperlink format MUST match the output medium.
Using the wrong format causes raw URLs to appear in parentheses — a clear sign of unpolished AI output.

**Detect the output medium before writing any link:**

| Medium | Correct format | Example |
|---|---|---|
| Website / blog / CMS | Markdown anchor text | `[anchor text](url)` |
| Instagram / Facebook caption | Plain text + separate CTA | `Click the link in bio to book.` |
| WhatsApp / Telegram | Plain URL, no markdown | `Chat with me: s.id/example` |
| Email (plain text) | Plain URL | `s.id/example` |
| Email (HTML / rich text) | HTML anchor | `<a href="url">anchor text</a>` |
| Word doc / PDF | Anchor text + URL in parentheses | `See the guide (example.com/guide)` |

**Universal rules — apply across all mediums:**
- NEVER combine anchor text with a URL in the same sentence unless the medium is a document
- NEVER write `anchor text (url)` — this is the pattern that exposes the URL outside the link
- NEVER use a bare URL as anchor text for website content
- If the medium is not clear from context, ask the user BEFORE writing any links

❌ Wrong (all mediums): "Click here to chat with me (s.id/example)"
❌ Wrong (all mediums): "Read the full guide at https://example.com/guide"
✅ Correct (website): "Book a [free consultation](s.id/example) — no pressure, no sales script."
✅ Correct (Instagram): "Want a policy review or coverage projection? Link in bio."
✅ Correct (WhatsApp): "Message me directly at s.id/example"

---

### G2. Preserve List Format for Procedural and Spec Content

Do NOT convert to prose: how-to steps, technical specs, checklists, FAQ sections, product comparisons.
For these: remove AI-style bold labels but keep the list structure.
Convert to prose ONLY narrative and argumentative sections.

❌ Do not convert procedural steps:
"- **Step 1:** Power down the main circuit
- **Step 2:** Mount the MCB on the DIN rail"

✅ Correct — remove bold labels, keep list:
"1. Power down the main circuit before touching any panel components
2. Mount the MCB on the DIN rail with even pressure along the clip"

---

### G3. Keep YMYL Safety Caveats

YMYL topics: electrical safety, health and nutrition, financial guidance, regulatory compliance, workplace safety.

Keep these phrases (do NOT strip them as filler):
- "Consult a certified electrician before installation."
- "Switch off the main breaker before proceeding."
- "Results may vary depending on local grid conditions."
- "Verify current compliance requirements with your local authority."

Still delete: "As of my last training update", stacked hedges like "could potentially possibly suggest".

---

### G4. Make Headings Specific and Descriptive

All H2/H3 headings must be specific enough to stand alone as informative statements.

❌ Generic: "Benefits of Phoenix Contact Relays"
✅ Specific: "Phoenix Contact vs Omron relay: response time and service life compared"

Sentence case only. No Title Case In Every Word.

---

### G5. Keep First-Hand Experience and Practitioner Observations

Do not strip anecdotal or field-based evidence. These are E-E-A-T experience signals.

❌ Delete (vague): "Experts believe it plays a crucial role"
✅ Preserve (specific experience): "From three commissioning projects in Bekasi's industrial zone,
this configuration consistently outperformed the manufacturer's default setting under peak load."

---

### G6. Replace Deleted Transitions — Do Not Just Delete Them

When you remove AI transition phrases (Pattern 7), replace them with a specific logical connection.
An article with no transitions feels choppy. That signals low quality to Google raters.

❌ Delete the phrase: "Furthermore, it is important to consider the load characteristics."
✅ Replace with specific connection: "Relay selection comes down to one number from the load
analysis: peak inrush current at motor startup."

---

## LAYER 1: DETERMINE REGISTER

Before running patterns, establish the register and hold it throughout.

- **Formal**: full sentences, no contractions → B2B content, technical documentation, legal/financial
- **Semi-formal**: natural tone, occasional contractions → blog posts, LinkedIn, email marketing
- **Casual**: conversational, direct → social posts, lifestyle content

---

## LAYER 2: THE 32 PATTERNS

Scan for each of these in every output. Fix them before delivery.

---

### P1. Inflated Significance
**Delete these words:** stands as, serves as, testament, pivotal, crucial, vital, key (adjective),
marking a, setting the stage, evolving landscape, indelible mark, deeply rooted

State the fact. Let the reader decide if it matters.

❌ "marking a pivotal moment in the evolution of regional statistics"
✅ "was established in 1989 to collect regional statistics"

---

### P2. Notability Hammering
**Delete:** widely regarded, garnered attention, maintains a strong digital presence, active social media presence

One specific citation if needed. Never list media outlets.

❌ "cited in NYT, BBC, Financial Times, and The Hindu"
✅ "In a 2024 NYT interview, she argued that..."

---

### P3. Superficial -ing Analyses
**Delete:** highlighting, underscoring, emphasizing, reflecting, symbolizing, contributing to,
cultivating, fostering, encompassing, showcasing (when used to interpret a fact)

Remove the clause or replace with a sourced, specific claim.

❌ "symbolizing the community's deep connection to the land"
✅ "The architect said the design references local bluebonnets."

---

### P4. Promotional Language
**Delete:** boasts, vibrant, rich (figurative), profound, nestled, in the heart of,
groundbreaking, renowned, breathtaking, must-visit, stunning, game changer, revolutionary,
exemplifies, commitment to, scenic

State what is actually there.

❌ "Nestled within the breathtaking region, it stands as a vibrant town"
✅ "It is a town in the Gonder region, known for its weekly market"

---

### P5. Vague Attributions
**Delete:** Experts argue, Industry reports, Observers have cited, It is widely believed,
Many people think, Research shows (without a named source)

Name the source, institution, and year. Or remove the claim.

❌ "Experts believe it plays a crucial role"
✅ "A 2019 survey by the Chinese Academy of Sciences found..."

---

### P6. Challenges and Future Prospects Formula
**Delete openers:** Despite its..., Despite these challenges, Future Outlook, Looking ahead,
Poised for growth, The future looks bright, continues to thrive

Name specific problems with evidence. End sections with a concrete fact.

❌ "Despite challenges, it continues to thrive"
✅ "Traffic congestion increased after 2015 when three IT parks opened"

---

### P7. AI Vocabulary Words

**GPT-4 era (2023–mid 2024):** Additionally, boasts, bolstered, crucial, delve,
emphasize, ensure, foster, groundbreaking, leverage, meticulous, navigate, notable,
optimize, paramount, pivotal, revolutionize, robust, seamless, straightforward,
streamline, supercharge, synergy, transformative, underscore, unleash, unpack, utilize

**GPT-4o era (mid 2024–2025):** accelerate, align, authentic, catalyst, challenge (noun),
clarity, commitment, cutting-edge, data-driven, dynamic, empower, evolve, framework,
holistic, impactful, innovative, integrate, journey, landscape, mission, prioritize,
reshape, resonate, scalable, strategy, tapestry, thrive, vision

**GPT-4.5/o3 era (2025–2026):** amplify, bridge, complexities, cultivate, elevate,
harness, illuminate, intentional, mindful, multifaceted, navigate (complexities of),
nuanced, realm, thoughtful, trajectory

Replace every instance with a plain, specific alternative.

---

### P8. Negative Parallelisms
**Delete:** not only X but also Y, not just X but Y (as stylistic device)

Rewrite as two separate statements or restructure.

---

### P9. Corporate Speak
**Delete:** synergies, leverage (verb), value-add, circle back, bandwidth, move the needle,
touch base, take this offline, at the end of the day, going forward, deep dive

Say what you mean in plain words.

---

### P10. Closing Section Repetition
Delete final sections that only summarize what was just said with no new information.
End with a specific fact, a direct action, or an honest open question.

---

### P11. Unnecessary Preamble
**Delete:** In this article, we will explore... / This article aims to... / In this guide,
you will learn... / I am going to tell you about...

Start with the first real piece of information.

---

### P12. Weak Verb + Noun Constructions
| Replace | With |
|---|---|
| Make a decision | Decide |
| Have the ability to | Can |
| Provide assistance | Help |
| Give consideration to | Consider |
| Make an improvement | Improve |
| Conduct a study | Study |

---

### P13. Colon After Every Paragraph Intro
Delete colon-intro-then-list as default structure for every paragraph.
Exception (G2): functional intros for procedural how-to steps are kept.

---

### P14. Bold Overuse (Modified — see G4)
Remove decorative bold (emphasis on random words).
Keep bold for: technical terms on first use in B2B/technical content.

❌ Remove (decorative): "It blends **OKRs**, **KPIs**, and tools like the **Business Model Canvas**"
✅ Keep (technical first use): "The **inrush current** — the spike at motor startup — is typically 6–8x the rated running current."

---

### P15. Inline-Header Bullet Lists (Modified — see G1 + G2)
Check G2 first:
- Procedural, spec, comparison, FAQ → remove bold labels, keep list structure
- List contains hyperlinks → apply G1 before conversion
- Narrative or argumentative list → convert to prose

---

### P16. Title Case in Headings
Use sentence case.
❌ "Strategic Negotiations And Global Partnerships"
✅ "Strategic negotiations and global partnerships"

---

### P17. Emoji Decoration
Remove emojis from headings and bullet points.
Emojis in conversational content or social posts are acceptable.

---

### P18. Curly Quotation Marks
Replace curly/smart quotes with straight quotes.
Curly quotes are a ChatGPT artifact.

---

### P19. Chatbot Artifacts
**Delete entirely:** I hope this helps, Of course!, Certainly!, Great question!,
You're absolutely right!, Would you like me to..., Here is your article on...

Start with actual content.

---

### P20. Knowledge-Cutoff Disclaimers (Modified — see G3)
Delete: "As of my last training update", "While specific details are limited"
Keep for YMYL: appropriate safety and professional caveats per G3.

---

### P21. Sycophantic Tone
**Delete:** Great question!, You're absolutely right!, That's an excellent point!, What a fascinating topic!

Engage with substance, not flattery.

---

### P22. Filler Phrases
| Replace | With |
|---|---|
| In order to | To |
| Due to the fact that | Because |
| At this point in time | Now |
| In the event that | If |
| Has the ability to | Can |
| It is important to note that | [delete] |
| When it comes to | [restructure] |
| With regard to | On / About |
| In terms of | [restructure] |

---

### P23. Excessive Hedging (Modified — see G3)
Collapse stacked hedges universally: "could potentially possibly" → "may"
Single appropriate YMYL hedges → keep per G3.

❌ "It could potentially possibly be argued that the policy might have some effect"
✅ "The policy may affect outcomes."

---

### P24. Generic Positive Conclusions
**Delete:** The future looks bright, Exciting times lie ahead, A major step in the right direction

End with a specific fact or a concrete action the reader can take.

---

### P25. Uniform Rhythm
Vary at both levels:
- Sentence level: short punch, then a longer one that breathes, then a fragment, then medium
- Paragraph level: different lengths, different opening words — no two adjacent paragraphs with the same structure

❌ "The system processes data efficiently. It handles requests quickly. Results are reliable."
✅ "The system is fast. Not just fast for its category — 40,000 req/sec in their latest
benchmark. Whether that holds under real-world load is another question."

---

### P26. Numbered/Labeled Headers (Modified — see G2 + G4)
Delete: "STEP 1:", "TRICK #1", "TIP 1:", "PRO TIP:", "KEY TAKEAWAY:", "BONUS:"
Keep: sequential numbered H2/H3 for genuine procedural content with specific descriptive headings.

---

### P27. Search Artifact Codes
Delete any placeholder codes from ChatGPT web search (e.g., turn0search0).

---

### P28. Hyphenated Word Pair Overuse
Max 1–2 hyphenated compounds per paragraph.

**Common offenders:** cross-functional, data-driven, client-facing, mission-critical,
purpose-built, forward-thinking, results-oriented, industry-leading, best-in-class

---

### P29. Present Participle Trailing Clause
**Delete:** ...emphasizing the importance of, ...reflecting the continued relevance of,
...highlighting the need for, ...demonstrating the value of, ...signaling a shift toward

Delete the trailing clause. If the idea matters, make it its own sentence with a source.

❌ "The company expanded in 2023, emphasizing the growing importance of regional diversification."
✅ "The company opened three regional offices in 2023. The CEO said the move
reduced exposure to single-market regulatory risk."

---

### P30. "In Today's X" Article Openers
**Delete:** In today's digital age, In today's fast-paced world, In today's competitive landscape,
In an era of, In the realm of, As we navigate, Now more than ever, With the rise of,
In recent years (as an opener)

Start with a specific fact instead.

❌ "In today's competitive digital landscape, businesses must adapt to stay ahead."
✅ "Google updated its core algorithm three times in 2024. Each update shifted what
'helpful content' means for SEO."

---

### P31. Absence of Friction
AI sanitizes all difficulty. Expert readers notice immediately.

Add at least one moment of genuine friction per article where relevant: a failed attempt,
a tradeoff, an uncertainty, something that took longer than expected.

❌ "By implementing this strategy, the team overcame their challenges and achieved their goals."
✅ "The first rollout failed — conversion rate dropped 12% in week two. They pulled it back,
did three weeks of user interviews, and relaunched. That version worked."

---

### P32. Unlock/Empower/Elevate Title Pattern
**Delete from titles and H2s:** Unlock [X], Empower [Y], Elevate [Z], Master X in Y Days,
The Ultimate Guide to, Everything You Need to Know About, How to [verb] Like a Pro,
Transform Your, Supercharge Your, The Secret to

Write a title that states the actual specific claim or finding.

❌ "Unlock the Secrets to Elevating Your Content Strategy"
✅ "Why most content strategies fail at month three (and what the data shows)"

---

## SELF-CHECK (Run before every delivery)

**Layer 0 — SQEG:**
1. All internal links have descriptive anchor text? No naked URLs?
2. Procedural, spec, and comparison lists kept as lists (bold labels removed only)?
3. YMYL content still has appropriate professional caveats?
4. All headings specific and descriptive? Sentence case?
5. Deleted transitions replaced with specific logical connections?

**Layer 2 — AI patterns:**
6. Any present participle trailing clauses? (P29 — most commonly missed)
7. Any "In today's X" or "In the realm of" openers? (P30)
8. Any GPT-5 era vocabulary? (navigate, complexities, realm, resonate, elevate, nuanced)
9. Any negative parallelisms? (P8)
10. Paragraphs varied in length?
11. Sentence rhythm mixed — short punchy alongside longer ones?
12. Any moment of friction included where relevant? (P31)
13. More than one em dash in any paragraph?
14. Any en dash mid-sentence? Any semicolons that should be a period?
15. Ending specific, not inspirational? (P24)
16. Read aloud — does it sound like a person?

---

## When the User Says "Humanize This"

Follow this exact process:

1. Determine register (formal / semi-formal / casual)
2. Run Layer 0 — identify and protect all SQEG-critical elements before touching anything
3. Run Layer 2 — all 32 patterns
4. Preserve all meaning — change HOW it is said, not WHAT it says
5. Run the 16-point self-check
6. Output only the rewritten text — no preamble, no explanation of changes
