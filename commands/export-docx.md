---
name: export-docx
description: Export the canonical NEXUS article artifact to a verified Word DOCX with an SEO metadata table, formatted article hierarchy, and JSON-LD schema.
argument-hint: [source.md] [output.docx]
allowed-tools: Read, Write, Bash
---

# NEX-X - DOCX Export

**Mission:** Export the latest complete NEX-Fn or NEX-U artifact to a real `.docx` without rewriting or changing its content.

## Source

Use `nexus-output/latest.md` by default. It must contain:

1. Valid YAML metadata with `title`, `slug`, and `meta-description`.
2. The complete article beginning with its H1.
3. `Schema Markup (JSON-LD)` as the final heading, followed by the complete schema in a fenced `json` block.

If `/convert` ran, use the converted artifact. CTA HTML must remain in fenced `html` blocks so it exports as plaintext, paste-ready code.

When no artifact exists, recover the latest complete article, On-Page SEO Pack, and schema from the current conversation and write `nexus-output/latest.md` once. Do not repeat the article in chat. Ask for missing content only when it cannot be recovered.

## Workflow

1. Resolve arguments:
   - No arguments: source `nexus-output/latest.md`; output derived from its slug.
   - One `.md` argument: use it as source and derive output from its slug.
   - One `.docx` argument: use the default source and the supplied output.
   - Two arguments: source first, output second.
2. Confirm Pandoc is available with `command -v pandoc`. If absent, stop with the official install link: `https://pandoc.org/installing.html`. Do not install it automatically.
3. Run:

```bash
"${CLAUDE_PLUGIN_ROOT}/scripts/export-docx.sh" "<source.md>" ["<output.docx>"]
```

The script performs the conversion and structural checks locally. It must be the only component that formats the DOCX; do not reconstruct the article as HTML or Markdown in the prompt.

4. Optional visual QA:
   - DOCX generation never requires LibreOffice.
   - When `soffice` is available, render the generated DOCX to PDF with an isolated temporary profile.
   - When `pdftoppm` is also available, render and inspect every page. Fix and re-export only if clipping, broken tables, malformed headings, CTA code, or schema are visible.
   - If either renderer is unavailable, report that structural validation passed and state that visual QA was skipped.
5. Remove only temporary render files created by this run. Keep the source artifact and final DOCX.

## Required document order

1. Two-column table with `Judul Artikel`, `Slug`, and `Meta Description`
2. Complete article using real Word `Heading 1`, `Heading 2`, and lower heading styles
3. `Schema Markup (JSON-LD)` and the complete schema in monospaced formatting

Preserve paragraphs, emphasis, links, real lists, article tables, and CTA HTML order. Do not add the rest of the On-Page SEO Pack below the metadata table.

Return only the final DOCX path, structural validation result, and visual-QA status. Do not paste the article again.

End with: "DOCX exported - metadata table, formatted article, and schema included."
