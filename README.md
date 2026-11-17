# text-as-data-template - retired

**Retired on 2026-11-17. Start a database with `tad init` and a knowledge base with
[ideal-knowledge-base](https://github.com/grenudi/ideal-knowledge-base).**

This template was the scaffold of tad's vendoring era: a Python engine copied in as `.tad/` by git subrepo,
example tables, and the standing `backlog` and `session_log`. Since 2026-11-11 tad is a released Rust tool
that each repository pins and calls, not copies, and the template's pieces have gone where they belong
(decision `2026-11-17-ideal-knowledge-base` in linux-phone-oco/docs):

- **Starting a bare database** - `tables.toml`, `data/`, tad pinned to its release, the CI check - is
  [`tad init DIR`](https://github.com/creation-guidelines/tad-engine#starting-a-database) (tad 0.7.0,
  decision `2026-11-17-tad-init` in tad-engine).
- **The standing tables** - backlog, session log, decisions, research, sources - with the about link, the
  named queries an agent answers by and the short entry, are
  [ideal-knowledge-base](https://github.com/grenudi/ideal-knowledge-base), which a base follows by a pinned release.

Its reasons were carried into their records before it retired: DuckDB and JSON lines, extracted from a
working repository, vendoring by subrepo and why it was left, pinning by a tag (tad-engine's decisions and
its session log `2026-11-17-the-template-handed-over`); the backlog as a table and extracting from a
working base (ideal-knowledge-base's decisions `2026-09-22-backlog-as-a-table` and
`2026-11-17-extracted-from-a-working-base`). Its open render items went to tad-engine's backlog
(`render-output-guarded`); the git-subrepo items ended with vendoring. What it was, as it stood, is in this
repository's history and its rendered pages in [`docs/`](docs/index.md).
