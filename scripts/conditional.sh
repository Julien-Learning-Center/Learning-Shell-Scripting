#!/bin/bash

# --- If loops ---

if [ ! $# -eq 2 ]; then
    echo "You need 2 arguments to run this script"
    exit 1 # Error with arguments
fi

FIRST_NUMBER=$1
SECOND_NUMBER=$2
RESULT=$(( FIRST_NUMBER * SECOND_NUMBER ))

echo "$FIRST_NUMBER * $SECOND_NUMBER = $RESULT"

if [ $RESULT -lt 0 ]; then
    echo "$RESULT is negative."
elif [ $RESULT -eq 0 ]; then
    echo "$RESULT is null."
else
    echo "$RESULT is positive."
fi
