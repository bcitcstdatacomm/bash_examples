#!/usr/bin/env bash

clear

echo "This is line 1" > input.txt
echo "This is line 2" >> input.txt
echo "This is line 3" >> input.txt
echo "This is line 4" >> input.txt

while read -r LINE
do
  printf "line = %s\n" "$LINE"
done < input.txt

rm input.txt
