#!/bin/bash

# Find all '.md' and '.tex' files and read them into an array called FILES
# -t removes trailing newlines. readarray is the same as the "mapfile" command.
# readarray -t MD_FILES < <(find . -type f -name "*.md")
readarray -t FILES < <(find . -type f -regextype posix-extended -regex '.*\.(md|tex)')

# DEBUG: Check the arguments that are being passed
echo "Number of Arguments passed: $#"
for arg in "$@"; do
    echo "$arg"
done

RESULT = 0
# Check to see of an optional argument was passed as input
if [[ -n $1 ]]; then
    echo "Checks argument supplied"
    INPUT_CHECKS=$1
    #for file in "${MD_FILES[@]}"; do
    for file in "${FILES[@]}"; do
        echo "linting $file"
        write-good "$file" "$INPUT_CHECKS"
	if [[ $? -ne 0 ]]; then
	    RESULT = 1
	fi
    done
else
    #for file in "${MD_FILES[@]}"; do
    for file in "${FILES[@]}"; do
        echo "linting $file"
        write-good "$file"
	if [[ $? -ne 0 ]]; then
	    RESULT = 1
	fi
    done
fi

if [[ $RESULT -ne 0 ]]; then
    exit 1
fi
exit 0
