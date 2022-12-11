#!/bin/zsh

cd docs || exit 1

for art in art-[0-9]*.md; do
    sed -i 's/^Parágrafo único./\n&/' "$art"
    sed -i 's/^§ /\n&/' "$art"
done