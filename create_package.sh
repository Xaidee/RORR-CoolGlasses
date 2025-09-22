#!/usr/bin/env bash

OUTPUT_ZIP=${1:-"Xaidee-CoolGlasses.zip"}

EXCLUDE_PATTERNS=("$OUTPUT_ZIP")

if [ -f .gitignore ]; then
    while IFS= read -r line; do
        # Skip empty lines and comments
        [[ -z "$line" || "$line" =~ ^# ]] && continue
        EXCLUDE_PATTERNS+=("$line")
    done < .gitignore
fi

zip -r "$OUTPUT_ZIP" . -x "${EXCLUDE_PATTERNS[@]}"
