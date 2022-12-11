#!/bin/zsh -xv

cd docs || exit 1
for cap in in capitulo-[0-9].md; do
    titulo_cap=$(head -1 "${cap}" | sed 's/^# //')
    echo
    echo "  - ${titulo_cap}:"
    for art in $(grep -o -E 'art-[0-9]+.md' "${cap}"); do
        echo "    - ${art}"
    done
done