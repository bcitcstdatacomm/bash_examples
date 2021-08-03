#!/usr/bin/env bash

echo -n "Enter a letter: "
read LETTER

LETTER=$(echo "$LETTER" | tr '[:lower:]' '[:upper:]')

case $LETTER in

  A | E | I | O | U)
    echo "Vowel"
    ;;

  B | C | D | F | G | H | J | K | L | M | N | P | Q | R | S | T | V | W | X | Z)
    echo "Consonant"
    ;;

  Y)
    echo "Depends"
    ;;

  *)
    echo -n "unknown"
    ;;
esac
