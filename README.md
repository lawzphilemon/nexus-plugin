# NEXUS Content Pipeline

General-purpose Claude Code and Codex plugin for SEO/GEO article research, drafting, conversion, and DOCX export. It has no default client, domain, contact destination, product, or brand palette.

## Install

```text
/plugin marketplace add lawrencephilemon/nexus-plugin
/plugin install nexus@nexus-plugin
```

### Codex

Install the repository as a Codex plugin, then use `$nexus-pipeline` to continue from the latest completed stage or invoke a stage such as `$nexus-research`, `$nexus-outline`, or `$nexus-finaldraft`.

See [`CODEX.md`](CODEX.md) for Codex entry points.

## Claude Code pipeline

```text
/research → /improve → /geo → /outline → /firstdraft → /finaldraft → [/convert | /convert-truemission] → /export-docx
```

`/humanize` also works standalone.

### `/research` — NEX-R

Analyzes the top organic results, PAA questions, featured-snippet format, and content gaps without fabricating inaccessible data.

### `/improve` — NEX-I

Identifies search intent, semantic gaps, SQEG/SQRG requirements, and E-E-A-T improvements grounded in NEX-R findings.

### `/geo` — NEX-G

Builds a query fan-out, GEO structure prescription, schema recommendation, and information-gain proposition.

### `/outline` — NEX-O

Builds a GEO-compliant outline, discovers verified internal links from the supplied domain, and tags natural conversion points.

Requires `WebFetch` and `WebSearch`.

### `/firstdraft` — NEX-F

Writes the full article from the confirmed outline and silently applies the appropriate language humanizer.

### `/finaldraft` — NEX-Fn

Re-runs the humanizer and GEO/SEO checks, then delivers the final article, On-Page SEO Pack, and Schema JSON-LD.

### `/convert` — NEX-U

Adds up to three site-branded contact CTA blocks and optional factual product or service mentions.

- Detects colors from the supplied website.
- Requires a confirmed CTA destination and button label.
- Uses only supplied or verified offer details.
- Applies stronger source and disclaimer checks to regulated or high-stakes claims.
- Never supplies a default domain, contact, palette, credential, product, or claim.

Requires `WebFetch` and `WebSearch`.

### `/convert-truemission` — NEX-U-TM

Runs the same conversion workflow with an isolated TrueMission/Prudential profile containing the approved domain, WhatsApp destination, brand palette, RIPLAY sourcing rules, UP planning formula, and insurance compliance checks.

This profile is Claude Code-only and is never loaded by the general `/convert` command.

### `/export-docx` — NEX-X

Exports the latest final or converted article to a Word document containing:

- A metadata table for article title, slug, and meta description.
- Real Word heading styles for the article hierarchy.
- Preserved lists, links, article tables, and CTA HTML.
- JSON-LD schema at the end.

The command uses LibreOffice's native HTML-to-DOCX conversion. Visual QA uses LibreOffice and Poppler when available.

`/export-docx` is currently Claude Code-only.

### `/humanize` — NEX-H

Humanizes Indonesian, English, or mixed text while preserving meaning and E-E-A-T signals.

## Supporting skills

- `humanizer-id` and `humanizer-en` — language-specific humanization.
- `wa-cta-standard` — three generic, site-branded CTA layouts.
- `product-upsell` — evidence-gated product or service mapping for any industry.
- `truemission-prudential` — isolated Claude-only profile loaded by `/convert-truemission`.
