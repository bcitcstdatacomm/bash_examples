#!/usr/bin/env bash

USAGE="Usage: $0 arg-1 arg-2 arg-3 arg-4 [...]"

clear

if [ $# -le 3 ]
then
  echo "$USAGE"
  exit 2
fi

echo "There are $# arguments"
echo "There arguments are $*"

while (( "$#" ))
do
  echo "$1"
  shift 1
done
