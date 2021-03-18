#!/bin/bash

# --- Files ---

if [ $# -ne 1 ]; then
    echo "This script needs one argument to work correctly."
    exit 1
fi

FILE=$1

# Checks if the given file exists
if [ -f "$FILE" ]; then
    # Default variables
    VAR_EXE="NO"
    VAR_READ="NO"
    VAR_WRITE="NO"

    # Checks if the file is executable
    if [ -x "$FILE" ]; then
        VAR_EXE="YES"
    fi

    # Checks if the file is readable
    if [ -r "$FILE" ]; then
        VAR_READ="YES"
    fi

    # Checks if the file is writable
    if [ -w "$FILE" ]; then
        VAR_WRITE="YES"
    fi

    echo "===FILE: $FILE==="
    echo "EXECUTABLE: $VAR_EXE"
    echo "READ: $VAR_READ"
    echo "WRITE: $VAR_WRITE"
else
    if [ -d "$FILE" ]; then
        echo "$FILE is a directory."
    else
        echo "The given file does not exist."
    fi

    exit 2
fi
