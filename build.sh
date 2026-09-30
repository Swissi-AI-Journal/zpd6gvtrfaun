#!/bin/sh
set -eu

cd "$(dirname "$0")/source"

paper="Swissi-2026-07-zpd6gvtrfaun-TrustAnchorAI-PortableIdentity.tex"

pdflatex -interaction=nonstopmode -halt-on-error "$paper"
pdflatex -interaction=nonstopmode -halt-on-error "$paper"
pdflatex -interaction=nonstopmode -halt-on-error "$paper"

printf 'Built source/%s.pdf\n' "${paper%.tex}"
