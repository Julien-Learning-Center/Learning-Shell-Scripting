#!/bin/bash

# There are 3 ways of assigning a value to a variable

# --- Explicit definition ---
APPLE="Apple"
echo $APPLE

# --- Read command ---
echo -n "Your name: "
read -r NAME
echo Name: "$NAME"

# Note: It is possible to read from a file
read -r HOSTNAME < /etc/hostname
echo Hostname: "$HOSTNAME"

# --- Command substitution ---
START=$(date +%s)

sleep 2

END=$(date +%s)
DIFFERENCE=$(( END - START ))

echo Time elapsed: "$DIFFERENCE" seconds.
