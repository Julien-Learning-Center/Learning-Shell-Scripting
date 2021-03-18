#!/bin/bash

TEN=10

# Here's how to do math calculations

# --- Double parenthesis ---
# Note: The best way to do math calculations
RESULT=$((TEN + 10))
echo Result with double parenthesis: "$RESULT"

# --- expr ---
# Note: This is outdated
RESULT=$(expr $TEN + 10)
echo Result with expr: "$RESULT"

exit 0
