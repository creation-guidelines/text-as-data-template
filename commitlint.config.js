// Enforces Conventional Commits (https://www.conventionalcommits.org/) on every commit in a PR.
// Standard types only (feat, fix, docs, chore, ci, test, refactor, ...) - no custom type-enum, so
// this stays generic across whatever content this template is used for. Scope is optional and
// free-form; see CONTRIBUTING.md for the scopes this repo's own convention suggests.
module.exports = {
  extends: ["@commitlint/config-conventional"],
};
