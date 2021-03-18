#!/bin/bash

# --- String Comparison ---

echo "First name: "
read -r FIRST_NAME

echo "Second name: "
read -r SECOND_NAME

if [ "$FIRST_NAME" = "$SECOND_NAME" ]; then
    echo "The names are identical !"
    exit 0
else
    echo "The names are not identical !"
    exit 0
fi
