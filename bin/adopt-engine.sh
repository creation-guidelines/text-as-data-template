#!/usr/bin/env bash
# One-time bootstrap for a repo freshly generated from this template via GitHub's "Use this
# template" button. Repos generated that way get a single fresh commit with no shared git history
# with text-as-data-template (GitHub does not preserve history or set up a remote for generated
# repos - this is not a fork), so .tad/ arrives as a plain copy, not a git subtree. This script
# re-adopts it as one, so `git subtree pull` works from here on. Run it once, right after
# generating the repo, before you've made any other commits that touch .tad/.
set -euo pipefail
ENGINE_REPO="https://github.com/creation-guidelines/tad-engine.git"
ENGINE_REF="dist"

if [ ! -d .tad ]; then
  echo "No .tad/ directory found - nothing to adopt. Run this from the repo root." >&2
  exit 1
fi

if ! git diff --quiet || ! git diff --cached --quiet; then
  echo "Working tree has uncommitted changes. Commit or stash them first." >&2
  exit 1
fi

git rm -rq .tad
git commit -q -m "chore(tad): remove vendored copy before adopting as a git subtree"
git subtree add --prefix=.tad "$ENGINE_REPO" "$ENGINE_REF" --squash
echo "Done. .tad/ is now a git subtree tracking $ENGINE_REPO ($ENGINE_REF)."
echo "To pull future engine updates: git subtree pull --prefix=.tad $ENGINE_REPO $ENGINE_REF --squash"
