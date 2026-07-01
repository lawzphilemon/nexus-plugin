# NEXUS Content Pipeline

Claude Code plugin for TrueMission's SEO/GEO content workflow — and reusable for other clients too (see "Not just TrueMission" below).

## Install

```
/plugin marketplace add <your-github-username>/nexus-plugin
/plugin install nexus@nexus-plugin
```

(Replace `<your-github-username>` with the actual GitHub path once uploaded — e.g. `lawrencephilemon/nexus-plugin`.)

## Pipeline

```
/research → /improve → /geo → /outline → /firstdraft → /finaldraft → /convert
```

`/humanize` also works standalone, outside the pipeline.

### `/research` — NEX-R
Structured SERP analysis: top 5 organic results, PAA questions, featured snippet format, content gap. Never fabricates data — flags inaccessible results and proceeds with what's available.

### `/improve` — NEX-I
Search intent subcategory, semantic gap analysis, SQEG/SQRG compliance notes, and a four-part E-E-A-T gap breakdown. Every point ties back to a specific NEX-R finding.

### `/geo` — NEX-G
Query fan-out table (min. 10 sub-queries), GEO structure prescription (Direct Answer Block, Definition Boxes, Stat Blocks, Comparison Table, FAQ), schema recommendation, and an information gain proposition.

### `/outline` — NEX-O
Builds the GEO-compliant article outline.
- **Internal link discovery** — fetches the target site's `sitemap.xml` (falls back to `site:domain [keyword]` search) to find real, verified internal links instead of relying on manually supplied ones. Never fabricates a URL.
- **Conversion point tagging** — marks which H2s are natural CTA placement candidates (`None / Variant 1 / Variant 2 / Variant 3`), read later by `/convert`.

Requires `WebFetch` and `WebSearch`.

### `/firstdraft` — NEX-F
Writes the full draft from the confirmed outline, applies keyword placement and GEO writing rules, then silently runs the humanizer skill before delivering.

### `/finaldraft` — NEX-Fn
Re-runs the humanizer, checks GEO/SEO/humanizer compliance checklists, delivers the finished article plus an On-Page SEO Pack and Schema JSON-LD.

### `/convert` — NEX-U
Turns a finished article into a lead-generating asset: contact CTA blocks + soft product upsell, placed at the reader's natural reading pauses.
- Reads the Conversion Point tags from `/outline` if present; otherwise scans the draft for natural pauses.
- **Site Brand Detection** — fetches the target website and extracts its actual colors, so CTA blocks match the site instead of always using TrueMission's palette. Skips this for `truemission.id` (uses the known default palette directly).
- **Contact link** — asks for the client's own contact link and pre-filled text; only defaults to Lawrence's TrueMission WhatsApp link when the article is confirmed to be a TrueMission/Prudential piece.
- **Product mapping branches by client vertical** — insurance/Prudential clients get the full `product-upsell` skill (Opsi A, UP formula, insurance compliance checklist); other industries get a lighter generic soft-mention with general honesty rules only.
- Max 3 CTAs per article, runs a compliance check before delivering.

Requires `WebFetch` and `WebSearch`.

### `/humanize` — NEX-H
Standalone humanizer for any pasted or uploaded text. Auto-detects English vs Bahasa Indonesia (or mixed) and applies the matching skill.

## Skills

- `skills/humanizer-id/SKILL.md` — Bahasa Indonesia humanizer: Layer 0 SQEG protections, register, 34 AI-pattern fixes, 15-point self-check
- `skills/humanizer-en/SKILL.md` — English humanizer: Layer 0 SQEG protections, register, 32 AI-pattern fixes, 16-point self-check
- `skills/wa-cta-standard/SKILL.md` — the 3 CTA visual variants, color token system, contact-link handling, WordPress Classic Editor rules
- `skills/product-upsell/SKILL.md` — insurance/Prudential-specific: Opsi A framing, UP calculation formula, compliance checklist

## Not just TrueMission

`/outline`'s internal link discovery and conversion-point tagging are fully generic — they work on any domain. `/convert`'s CTA color system adapts to whatever site it's pointed at, and its contact link + product-mapping logic ask for client-specific details instead of assuming TrueMission every time. The `product-upsell` skill itself is the one piece that stays insurance-specific; for other clients, `/convert` uses its generic fallback instead.

`/research`, `/improve`, `/geo`, `/firstdraft`, and `/finaldraft` are already keyword/market/language-agnostic — nothing in them is TrueMission-specific.
