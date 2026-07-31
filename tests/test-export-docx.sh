#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
work_dir="$(mktemp -d)"
trap 'rm -rf "$work_dir"' EXIT

cat >"$work_dir/article.md" <<'MARKDOWN'
---
title: "Panduan Contoh"
slug: "/panduan-contoh"
meta-description: "Meta description untuk menguji export DOCX NEXUS."
h1: "Panduan Contoh"
image-alt-text-template: "Panduan contoh"
internal-links-used: "Contoh -> https://example.com"
---

# Panduan Contoh

Paragraf pembuka dengan **teks tebal** dan [tautan](https://example.com).

## Bagian Utama

- Item pertama
- Item kedua

```html
<div class="cta">CTA tetap menjadi plaintext HTML.</div>
```

# Schema Markup (JSON-LD)

```json
{
  "@context": "https://schema.org",
  "@type": "Article"
}
```
MARKDOWN

"$repo_root/scripts/export-docx.sh" "$work_dir/article.md" "$work_dir/article.docx" >/dev/null
test -s "$work_dir/article.docx"
pandoc "$work_dir/article.docx" --to=plain | grep -Fq "Panduan Contoh"
echo "DOCX smoke test passed"
