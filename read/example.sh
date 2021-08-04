#!/usr/bin/env bash

clear

printf "Enter a value: "
read FOO
printf "\nFOO=%s\nBAR=%s\n" "$FOO" "$BAR"

printf "\nEnter another value: "
read BAR
printf "\nFOO=%s\nBAR=%s\n" "$FOO" "$BAR"

printf "\nEnter another value: "
read FOO
printf "\nFOO=%s\nBAR=%s\n" "$FOO" "$BAR"

printf "\nEnter two values: "
read FOO BAR
printf "\nFOO=%s\nBAR=%s\n" "$FOO" "$BAR"
