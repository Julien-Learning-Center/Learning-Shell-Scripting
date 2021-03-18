#!/bin/bash

# --- Case 1st exemple ---

echo -n "First Name: "
read -r FIRST_NAME

echo -n "Last Name: "
read -r LAST_NAME

echo -n "Age: "
read -r AGE

echo "Here is your data: "
echo "First Name: $FIRST_NAME"
echo "Last Name: $LAST_NAME"
echo "Age: $AGE"

CHECK=0

while [ "$CHECK" -eq 0 ]
do
    echo -n "Is the data correct ? [Y/n] "
    read -r ANSWER

    case "$ANSWER" in
        "Y"|"y" )
            echo "First Name: $FIRST_NAME" >> data.txt
            echo "Last Name: $LAST_NAME" >> data.txt
            echo "Age: $AGE" >> data.txt
            echo "====================" >> data.txt
            echo "Your data has been saved in the data.txt file."

            CHECK=1
        ;;
        "N"|"n" )
            echo "Nothing was saved. Run the script again."

            CHECK=1
        ;;
        * )
            echo "Wrong answer."
        ;;
    esac
done

# --- Case 2nd exemple ---

while [ $# -gt 0 ]
do
    case "$1" in
        "-h"|"--help" )
            echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
            shift # Shifts the positional parameters to the left, putting each parameter in a lower position.
            exit 1
        ;;
        "-f"|"--file" )
            FILE=$2

            if ! [ -f "$FILE" ]; then
                echo "The given file does not exist."
                exit 2
            fi

            CHARACTERS=$(< "$FILE" wc -m)
            LINES=$(< "$FILE" wc -l)
            WORDS=$(< "$FILE" wc -w)

            echo "===FILE: $FILE==="
            echo "Characters: $CHARACTERS"
            echo "Lines: $LINES"
            echo "Words: $WORDS"

            shift
            shift
        ;;
        * )
            echo "USAGE: $0 [-h] [--help] [-f file] [--file file]"
            exit 1
        ;;
    esac
done
