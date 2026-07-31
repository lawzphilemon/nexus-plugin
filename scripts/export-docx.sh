#!/usr/bin/env bash
set -euo pipefail

plugin_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_file="${1:-nexus-output/latest.md}"
output_file="${2:-}"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Pandoc is required. Install it from https://pandoc.org/installing.html and restart Claude Code." >&2
  exit 1
fi

if [[ ! -f "$source_file" ]]; then
  echo "NEXUS source not found: $source_file" >&2
  exit 1
fi

if [[ -z "$output_file" ]]; then
  slug="$(pandoc "$source_file" --from=markdown+yaml_metadata_block --to=plain --template='$slug$')"
  slug="${slug#/}"
  slug="${slug//\//-}"
  [[ -n "$slug" ]] || slug="nexus-article"
  output_file="${slug}.docx"
fi

output_dir="$(cd "$(dirname "$output_file")" 2>/dev/null && pwd)" || {
  echo "Output directory does not exist: $(dirname "$output_file")" >&2
  exit 1
}
output_file="$output_dir/$(basename "$output_file")"
temporary_docx="$(mktemp "$output_dir/.nexus-docx-XXXXXX.docx")"
temporary_text="$(mktemp)"

cleanup() {
  rm -f "$temporary_docx" "$temporary_text"
}
trap cleanup EXIT

pandoc "$source_file" \
  --from=markdown+yaml_metadata_block+raw_html \
  --to=docx \
  --standalone \
  --reference-doc="$plugin_root/assets/nexus-reference.docx" \
  --lua-filter="$plugin_root/scripts/nexus-docx.lua" \
  --resource-path="$(dirname "$source_file")" \
  --output="$temporary_docx"

pandoc "$temporary_docx" --to=plain --output="$temporary_text"
grep -Fq "Judul Artikel" "$temporary_text"
grep -Fq "Slug" "$temporary_text"
grep -Fq "Meta Description" "$temporary_text"
grep -Fq "Schema Markup (JSON-LD)" "$temporary_text"

mv -f "$temporary_docx" "$output_file"
echo "$output_file"
