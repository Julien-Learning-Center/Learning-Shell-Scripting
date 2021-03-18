#!/bin/bash

# --- Arrays ---
UNIX=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'Kali Linux'); # Declare an array
SHELL=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');

echo "All elements in the array: ${UNIX[*]}"
echo "Number of elements in the array: ${#UNIX[@]}"
echo "Number of characters in the first element of the array: ${#UNIX}"
echo "Length of element at index 3: ${#UNIX[3]}"
echo "Extract 2 elements starting from index 3: ${UNIX[*]:3:2}"
echo "Extract only first three characters from index 2: ${UNIX[2]:0:3}"
echo "Replace Ubuntu by Lubuntu: ${UNIX[*]/Ubuntu/Lubuntu}"

UNIX=("${UNIX[@]}" "POP OS" "Manjaro Linux") # Add elements to an array

unset "UNIX[1]" # Remove element at index 1

UNIX_SHELL=("${UNIX[@]}" "${SHELL[@]}")

echo "Unix array contatenated with Shell array: ${UNIX_SHELL[*]}"
