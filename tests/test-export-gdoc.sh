#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
work_dir="$(mktemp -d)"
trap 'rm -rf "$work_dir"' EXIT

cat >"$work_dir/article.md" <<'MARKDOWN'
---
title: "Panduan Contoh"
slug: "/panduan-contoh"
meta-description: "Meta description untuk menguji export Google Docs NEXUS."
faq-delivery: "body"
---

# Panduan Contoh

Paragraf pembuka dengan **teks tebal** dan [tautan](https://example.com).

```html
<div class="cta">CTA tetap menjadi plaintext HTML.</div>
```

# Schema Markup (JSON-LD)

```json
{"@context": "https://schema.org", "@type": "Article"}
```
MARKDOWN

pandoc "$work_dir/article.md" --from=markdown+yaml_metadata_block+raw_html --to=html --no-highlight \
  --lua-filter="$repo_root/scripts/nexus-gdoc.lua" --output="$work_dir/article.html"

html="$(cat "$work_dir/article.html")"
for expected in "Judul" "Panduan Contoh" "/panduan-contoh" "Meta description untuk" '<h1 id="panduan-contoh">' \
  'href="https://example.com"' '&lt;div class=&quot;cta&quot;&gt;' "Schema Markup (JSON-LD)"; do
  grep -Fq "$expected" <<<"$html" || { echo "missing: $expected" >&2; exit 1; }
done

if sed '/^slug:/d' "$work_dir/article.md" | pandoc --to=html --lua-filter="$repo_root/scripts/nexus-gdoc.lua" >/dev/null 2>&1; then
  echo "filter must fail when required metadata is missing" >&2
  exit 1
fi
echo "Google Docs export test passed"
