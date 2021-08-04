#!/usr/bin/env bash

clear

printf "Currently in: "
pwd
printf "Dir stack is: "
dirs

printf "\nPushing /\n"
pushd /  > /dev/null

printf "Currently in: "
pwd
printf "Dir stack is: "
dirs

printf "\nPushing /dev\n"
pushd /dev  > /dev/null

printf "Currently in: "
pwd
printf "Dir stack is: "
dirs

printf "\nPopping\n"
popd > /dev/null

printf "Currently in: "
pwd
printf "Dir stack is: "
dirs

printf "\nPopping\n"
popd > /dev/null

printf "Currently in: "
pwd
printf "Dir stack is: "
dirs
