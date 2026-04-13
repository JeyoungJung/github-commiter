#!/bin/bash
set -e

QUOTE=$(python3 -c "
import json, random
with open('quotes.json') as f:
    quotes = json.load(f)
print(random.choice(quotes))
")

DATE=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

echo "### $DATE" >> QUOTES.md
echo "" >> QUOTES.md
echo "> $QUOTE" >> QUOTES.md
echo "" >> QUOTES.md
echo "---" >> QUOTES.md
echo "" >> QUOTES.md

echo "Committed quote: $QUOTE"
