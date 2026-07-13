# Using NEXUS in Codex

The repository supports Claude and Codex from the same source files.

- Claude continues to use `.claude-plugin/plugin.json` and `commands/*.md`.
- Codex uses `.codex-plugin/plugin.json` and the `skills/nexus-*` adapters.
- Shared humanizer, CTA, and product rules remain under `skills/`.

## Codex entry points

- `$nexus-pipeline` continues from the latest completed stage.
- `$nexus-research` runs NEX-R.
- `$nexus-improve` runs NEX-I.
- `$nexus-geo` runs NEX-G.
- `$nexus-outline` runs NEX-O.
- `$nexus-firstdraft` runs NEX-F.
- `$nexus-finaldraft` runs NEX-Fn.
- `$nexus-convert` runs NEX-U.
- `$nexus-humanize` runs NEX-H independently.

Codex adapters read the existing files in `commands/`, so the workflow rules are not duplicated. Claude-specific `WebSearch` and `WebFetch` names are mapped to Codex internet search and page inspection inside the relevant adapters.
