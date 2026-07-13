---
name: nexus-pipeline
description: Orchestrate the complete NEXUS article workflow across research, improvement, GEO, outline, first draft, final draft, and optional conversion stages.
---

# NEXUS Pipeline Orchestrator

Determine the latest completed stage from the current conversation and supplied files, then load the corresponding adapter skill completely before continuing:

1. No research: `../nexus-research/SKILL.md`
2. NEX-R complete: `../nexus-improve/SKILL.md`
3. NEX-I complete: `../nexus-geo/SKILL.md`
4. NEX-G complete: `../nexus-outline/SKILL.md`
5. Confirmed outline: `../nexus-firstdraft/SKILL.md`
6. First draft complete: `../nexus-finaldraft/SKILL.md`
7. Final draft complete and conversion requested: `../nexus-convert/SKILL.md`

Run one stage at a time unless the user explicitly asks for an uninterrupted full pipeline. Never skip a dependency or silently invent missing inputs. Keep stage outputs in the conversation; when the user requests durable artifacts, save each stage as a clearly named Markdown file.
