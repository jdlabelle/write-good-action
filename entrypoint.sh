#!/bin/bash

MD_FILES=$(find . -type f -name "*.md")
for file in "${MD_FILES[@]}"; do
    write-good "$file"
done

#suggestions=$(write-good "$1")
#echo "suggestions=$suggestions" >> "$GITHUB_OUTPUT"
