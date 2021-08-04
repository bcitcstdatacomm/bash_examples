#!/usr/bin/env bash

clear

ech "Hello" 2>/dev/null

if [ $? -ne 0 ]
then
  printf "Failed: %d\n" $?
  exit 2
fi

echo "Success!"
