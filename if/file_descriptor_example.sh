#!/usr/bin/env bash

function is_terminal()
{
  printf "'%s' is a terminal : " "$1" 1>&2

  if [ -t "$1" ]
  then
    printf "true" 1>&2
  else
    printf "false" 1>&2
  fi

  printf "\n" 1>&2
}

clear

is_terminal 0
is_terminal 1
is_terminal 2
