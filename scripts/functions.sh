#!/bin/bash

# --- Functions ---
function add {
    RESULT=$(( $1 + $2 ))
    echo "Result: $RESULT"
}

echo -n "First Number: "
read -r FIRST

echo -n "Second Number: "
read -r SECOND

add FIRST SECOND
