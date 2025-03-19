#!/bin/bash

MD_FILES=$(find . -type f -name "*.md")

# DEBUG: Check the arguments that are being passed
echo "Number of Arguments passed: $#"
for arg in "$@"; do
    echo "$arg"
done

# Check to see of an optional argument was passed as input
if [[ -n $1 ]]; then
    echo "Checks exclude argument supplied"
    INPUT_EXCLUDE_CHECKS=$1
    for file in "${MD_FILES[@]}"; do
        echo "linting $file"
        write-good "$file" "$INPUT_EXCLUDE_CHECKS"
    done
else
    for file in "${MD_FILES[@]}"; do
        echo "linting $file"
        write-good "$file"
    done
fi
