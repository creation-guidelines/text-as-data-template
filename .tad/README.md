# .tad/ - the text-as-data engine

This folder is the reusable machinery. It is generic: it does not know your schema, table names,
or subject matter. Everything specific to *this* repository's content lives outside it, at the
repository root: `data/`, `checks/`, and the generated `docs/`.

| Path | What |
|---|---|
| `tools/dc.py` | Guard, canonicalize, and run SQL against `data/` (a DuckDB `EXPORT DATABASE` folder) |
| `tools/render.py` | Render `data/` into Markdown pages under `docs/`, schema-agnostic |
| `tests/test_dc.py` | Tests for `dc.py` itself |
| `requirements.txt`, `bootstrap.sh` | Pinned versions of DuckDB and Miller |

Improve this folder when you are fixing or extending the *engine* (a bug in `dc.py`, a new
rendering convention). Everything about your actual subject matter - what tables exist, what an
id looks like, which claims need a source - goes in `data/schema.sql`, `checks/*.sql`, and the
data itself, not here.

See the root [`AGENTS.md`](../AGENTS.md) for the day-to-day workflow, and the root
[`Makefile`](../Makefile) for the commands (`make check`, `make canon`, `make sql`, `make render`,
`make test`, `make verify`) that call into this folder so you never need to reference these paths
directly.
