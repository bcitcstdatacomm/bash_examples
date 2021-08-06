#!/usr/bin/env bash

clear
STRINGS=("Hello" "World")

for STR in ${STRINGS[*]}
do
  echo "$STR"
done

echo "Done"
