---
name: export-docx
description: Export the latest finalized or converted NEXUS article to a verified Word DOCX with an SEO metadata table, formatted article hierarchy, and JSON-LD schema.
argument-hint: [output-path]
allowed-tools: Read, Write, Bash
---

# NEX-X - DOCX Export

**Mission:** Export the latest complete NEX-Fn or NEX-U article to a real `.docx` without changing its content.

**Dependency:** Require the article, On-Page SEO Pack, and Schema Markup. Recover them from the current conversation when available; otherwise ask the user for the missing output.

## Workflow

1. Use the latest article version. If `/convert` ran, use the converted version and preserve its CTA HTML.
2. Extract the Title tag (falling back to H1), URL slug, Meta description, complete article, and complete valid JSON-LD.
3. Build one temporary UTF-8 HTML file:
   - Use Letter portrait, 1-inch margins, Calibri 11 pt, and readable spacing.
   - Start with a two-column metadata table containing `Judul Artikel`, `Slug`, and `Meta Description`. Use explicit HTML attributes `border="1" cellspacing="0" cellpadding="7" width="624"`, fixed table layout, and column widths `180` and `444`. Set label-cell `bgcolor="#e8eef5"`; do not rely on CSS alone for borders or widths.
   - Add the article title below the table.
   - Convert Markdown H1-H6 to semantic `<h1>`-`<h6>`, and preserve paragraphs, emphasis, links, real lists, and article tables.
   - Give article tables explicit `border`, `cellspacing`, `cellpadding`, total width `624`, and fixed column widths that sum to `624`.
   - Escape injected CTA HTML inside `<pre>` so it remains plaintext and paste-ready instead of rendering as a live CTA.
   - End with `<h1>Schema Markup (JSON-LD)</h1>` and pretty-printed, HTML-escaped JSON-LD inside `<pre>`.
   - Use inline CSS only. Do not reference external assets.
4. Choose the final output path:
   - Use `$ARGUMENTS` when supplied.
   - Otherwise use the slug without its leading slash, plus `.docx`.
5. Locate LibreOffice with `command -v soffice` or `command -v soffice.com`. On Windows, also check `/c/Program Files/LibreOffice/program/soffice.com`; LibreOffice may be installed without being in `PATH`. Prefer `soffice.com` on Windows.
6. Convert the temporary HTML with an isolated temporary LibreOffice profile:

```bash
"<soffice>" --headless "-env:UserInstallation=file:///<temporary-profile>" --convert-to "docx:Office Open XML Text" --outdir "<temporary-output-dir>" "<article.html>"
```

Move the generated DOCX to the final output path. If LibreOffice is unavailable after checking `PATH` and the standard Windows location, stop and tell the user that LibreOffice is required; do not create a renamed HTML file.

7. Verify the DOCX:
   - Confirm the output exists, is non-empty, and is a readable ZIP-based DOCX.
   - Render the DOCX to PDF using LibreOffice and a fresh temporary profile.
   - If `pdftoppm` is available, render every PDF page to PNG and inspect every page with `Read`.
   - Fix and regenerate if the metadata table, headings, article tables, CTA code, or schema are clipped or malformed.
   - If `pdftoppm` is unavailable, inspect the PDF when the active environment supports it and state the exact visual QA boundary.
8. Remove only the temporary HTML, isolated profile, and render files created by this run. Deliver the final DOCX path.

## Required document order

1. Two-column table with `Judul Artikel`, `Slug`, and `Meta Description`
2. Article title, then the complete article using real Word `Heading 1`, `Heading 2`, and lower heading styles
3. `Schema Markup (JSON-LD)` heading and the complete schema in monospaced formatting

Preserve paragraphs, emphasis, links, lists, article tables, and CTA HTML order. Do not repeat the rest of the On-Page SEO Pack below the metadata table.

End with: "DOCX exported - metadata table, formatted article, and schema included."
