---
name: nexus-research
description: Run NEX-R for structured SERP research, PAA discovery, featured-snippet analysis, and content-gap identification. Use when the user asks to start the NEXUS pipeline or research an article keyword.
---

# NEXUS Research Adapter for Codex

Read and follow `../../commands/research.md` completely.

Map Claude tools to Codex capabilities as follows:

- `WebSearch` means internet search.
- `WebFetch` means opening and inspecting the relevant source page.

Use current web sources and cite the URLs supporting SERP observations. Never fabricate inaccessible SERP details. Preserve the stage handoff to `$nexus-improve`.
