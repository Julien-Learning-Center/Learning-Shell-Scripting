#!/bin/bash

# --- For Loop ---

FOR_COUNT=1

for ARG in "$@"
do
    echo "$FOR_COUNT. argument: $ARG"
    FOR_COUNT=$(( FOR_COUNT + 1 ))
done

# --- While Loop ---

if [ $# -ne 1 ]; then
    echo "You need 1 argument to run this script."
    exit 1
fi

if ! [ -f "$1" ]; then
    echo "The given file does not exist."
    exit 2
fi

FILENAME=$1
WHILE_COUNT=1

while read -r line
do
    echo "$WHILE_COUNT: $line"
    WHILE_COUNT=$(( WHILE_COUNT + 1 ))
done < "$FILENAME"
