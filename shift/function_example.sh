#!/usr/bin/env bash

function display()
{
  echo "There are $# arguments"
  echo "There arguments are $*"

  while (( "$#" ))
  do
    echo "$1"
    shift 1
  done
}

clear

display "a" "b" "c" "d e f"
