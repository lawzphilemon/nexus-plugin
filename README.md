# NEXUS Content Pipeline

Claude Code plugin for TrueMission's SEO/GEO content workflow. Currently ships two commands, more pipeline stages will be added over time.

## Install

```
/plugin marketplace add <your-github-username>/nexus-plugin
/plugin install nexus@nexus-plugin
```

(Replace `<your-github-username>` with the actual GitHub path once uploaded — e.g. `lawrencephilemon/nexus-plugin`.)

## Commands

### `/outline` — NEX-O
Builds the GEO-compliant article outline. Needs NEX-R/NEX-I/NEX-G findings in context (from earlier pipeline stages, or pasted in manually).

- **Internal link discovery** — fetches the target site's `sitemap.xml` (falls back to `site:domain [keyword]` search) to find real, verified internal links. Never fabricates a URL.
- **Conversion point tagging** — marks which H2s are natural CTA placement candidates (`None / Variant 1 / Variant 2 / Variant 3`), read later by `/convert`.

Requires `WebFetch` and `WebSearch` (declared in the command's `allowed-tools`).

### `/convert` — NEX-U
Turns a finished article into a lead-generating asset: WhatsApp CTA blocks + soft product upsell, placed at the reader's natural reading pauses.

- Reads the Conversion Point tags from `/outline` if present; otherwise scans the draft for natural pauses.
- **Site Brand Detection** — fetches the target website and extracts its actual colors, so CTA blocks match the site instead of always using TrueMission's palette. Skips this for `truemission.id` (uses the known default palette directly).
- Max 3 CTAs per article, Opsi A upsell framing (soft mention + comparison table), runs a compliance check before delivering.

Requires `WebFetch` and `WebSearch`.

## Skills

- `skills/wa-cta-standard/SKILL.md` — the 3 CTA visual variants, color token system, WhatsApp deep link, WordPress Classic Editor rules
- `skills/product-upsell/SKILL.md` — Opsi A framing, UP (uang pertanggungan) calculation formula, compliance checklist

## Typical flow

```
/research → /improve → /geo → /outline → /firstdraft → /finaldraft → /convert
```

`/outline` and `/convert` are the two stages currently in this plugin; the rest of the pipeline gets added here as it's built out.
