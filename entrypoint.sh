#!/bin/bash

suggestions=$(write-good "$1")
echo "suggestions=$suggestions" >> "$GITHUB_OUTPUT"
