#!/usr/bin/env bash

function is_equal()
{
  printf "%d == %d : " "$1" "$2"

  if [ "$1" -eq "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_not_equal()
{
  printf "%d != %d : " "$1" "$2"

  if [ "$1" -ne "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_greater_than()
{
  printf "%d > %d : " "$1" "$2"

  if [ "$1" -gt "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_greater_than_equal()
{
  printf "%d >= %d : " "$1" "$2"

  if [ "$1" -ge "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_less_than()
{
  printf "%d < %d : " "$1" "$2"

  if [ "$1" -lt "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

function is_less_than_equal()
{
  printf "%d <= %d : " "$1" "$2"

  if [ "$1" -le "$2" ]
  then
    printf "true"
  else
    printf "false"
  fi

  printf "\n"
}

clear

printf "*** -eq ***\n"
is_equal 1 1
is_equal 1 2
is_equal 2 1
is_equal 2 2

printf "\n*** -ne ***\n"
is_not_equal 1 1
is_not_equal 1 2
is_not_equal 2 1
is_not_equal 2 2

printf "\n*** -gt ***\n"
is_greater_than 1 1
is_greater_than 1 2
is_greater_than 2 1
is_greater_than 2 2

printf "\n*** -ge ***\n"
is_greater_than_equal 1 1
is_greater_than_equal 1 2
is_greater_than_equal 2 1
is_greater_than_equal 2 2

printf "\n*** -lt ***\n"
is_less_than 1 1
is_less_than 1 2
is_less_than 2 1
is_less_than 2 2

printf "\n*** -le ***\n"
is_less_than_equal 1 1
is_less_than_equal 1 2
is_less_than_equal 2 1
is_less_than_equal 2 2
