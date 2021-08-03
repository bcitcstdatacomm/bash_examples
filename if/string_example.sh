#!/usr/bin/env bash

function has_characters()
{
  printf "'%s' has characters : " "$1"

  if [ -n "$1" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_empty()
{
  printf "'%s' is empty : " "$1"

  if [ -z "$1" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function equals()
{
  printf "'%s' equals '%s': " "$1" "$2"

  if [ "$1" = "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function not_equals()
{
  printf "'%s' not equal to '%s': " "$1" "$2"

  if [ "$1" != "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

clear

printf "*** -n ***\n"
has_characters ""
has_characters "a"

printf "\n*** -z ***\n"
is_empty ""
is_empty "a"

printf "\n*** = ***\n"
equals "" ""
equals "" "A"
equals "A" ""
equals "A" "A"
equals "a" "A"

printf "\n*** != ***\n"
not_equals "" ""
not_equals "" "A"
not_equals "A" ""
not_equals "A" "A"
not_equals "a" "A"
