#!/usr/bin/env bash

# Run like this: bash -i < break_example.sh

clear

echo "list aliases"
alias

echo "no alias"
showme -al ..

alias showme="ls"
echo "list aliases"
alias

echo "with alias"
showme -al ..

echo "remove alias"
unalias showme

echo "list aliases"
alias

showme -al ..

