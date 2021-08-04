#!/usr/bin/env bash

STRINGS=("Hello" "World")

for STR in ${STRINGS[*]}
do
  echo "$STR"
done

echo "Done"
