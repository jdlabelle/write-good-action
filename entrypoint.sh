#!/bin/bash

echo "prior to running write-good..."
MD_FILES=$(find . -type f -name "*.md")
for file in "${MD_FILES[@]}"; do
    write-good "$file"
done
echo "Write-Good exited with $?"

#suggestions=$(write-good "$1")
#echo "suggestions=$suggestions" >> "$GITHUB_OUTPUT"
