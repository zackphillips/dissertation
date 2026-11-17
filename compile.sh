#!/usr/bin/env bash
# Same engine as CI (.github/workflows/build-thesis.yml); falls back to xelatex + bibtex.
set -euo pipefail
cd "$(dirname "$0")"
DOC=dissertation
if command -v tectonic >/dev/null; then
  tectonic "$DOC.tex"
else
  xelatex "$DOC" && bibtex "$DOC" && xelatex "$DOC" && xelatex "$DOC"
fi
