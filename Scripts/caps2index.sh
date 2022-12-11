#!/bin/zsh

for cap in capitulo-[0-9].md
    echo "- [$(head -1 ${cap})](${cap})" >> index.md