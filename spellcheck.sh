#!/usr/bin/env bash
# Spell-check a LaTeX file in British English using the repository's
# personal word list (.aspell.en.pws, UTF-8) and replacement list.
#
# Usage: bash spellcheck.sh workshop-report/report.tex
#
# Exit codes:
#   0  no unknown words
#   1  unknown words found (listed as file:line: word)
#   2  aspell could not run (e.g. a broken word list)
set -uo pipefail

if [ $# -ne 1 ] || [ ! -f "$1" ]; then
    echo "usage: $0 FILE.tex" >&2
    exit 2
fi
file=$1
root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Arguments that are not prose (URLs, labels, ORCIDs, citations, file names) are skipped:
# "p"/"o" = skip a mandatory/optional argument, "P"/"O" = check it.
tex_commands=(
    "href pP" "url p" "autoref p" "hyperref oP" "geprislink p"
    "authorOrcid p" "includegraphics op" "bibliography p" "bibliographystyle p"
    "label p" "ref p" "cite op"
)
tex_args=()
for cmd in "${tex_commands[@]}"; do
    tex_args+=("--add-tex-command=$cmd")
done

aspell_list() {
    aspell list --lang=en_GB --encoding=utf-8 --mode=tex "${tex_args[@]}" \
        --personal="$root/.aspell.en.pws" --repl="$root/.aspell.en.prepl"
}

# Self-test: aspell must load the word lists and report a known misspelling.
if ! canary=$(printf 'speling\n' | aspell_list); then
    echo "error: aspell failed to start; check the message above and .aspell.en.pws" >&2
    exit 2
fi
if [ "$canary" != "speling" ]; then
    echo "error: aspell self-test failed (a known misspelling was not reported)" >&2
    exit 2
fi

if ! words=$(aspell_list < "$file" | sort -u); then
    echo "error: aspell failed while checking $file" >&2
    exit 2
fi

if [ -z "$words" ]; then
    echo "spellcheck: no unknown words in $file"
    if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
        echo "### Spellcheck: no unknown words in \`$file\`" >> "$GITHUB_STEP_SUMMARY"
    fi
    exit 0
fi

echo "spellcheck: unknown words in $file (fix them, or add correct words to .aspell.en.pws):"
if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
    {
        echo "### Spellcheck warnings in \`$file\`"
        echo "Fix misspellings or add valid proper nouns/acronyms to \`.aspell.en.pws\`:"
        echo ""
    } >> "$GITHUB_STEP_SUMMARY"
fi

while IFS= read -r word; do
    lines=$(grep -nwF -- "$word" "$file" | cut -d: -f1)
    for line in ${lines:-?}; do
        echo "$file:$line: $word"
        if [ -n "${GITHUB_ACTIONS:-}" ] && [ "$line" != "?" ]; then
            echo "::warning file=$file,line=$line::Unknown word '$word'"
        fi
        if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
            echo "- \`$file:$line\`: \`$word\`" >> "$GITHUB_STEP_SUMMARY"
        fi
    done
done <<< "$words"
exit 1
