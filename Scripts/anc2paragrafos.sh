#!/bin/zsh

cd docs || exit 1

# Âncoras para parágrafos
for i in {1..17}; do
    sed -i "s/^Parágrafo único./(art-${i}:paragrafo-unico)=\n\n&/" "art-${i}.md"
    sed -i -E "s|^§ ([0-9]+)|(art-${i}:paragrafo-\1)=\n\n§ \1|" "art-${i}.md"
done

