#!/usr/bin/env bash

clear

./child.sh "no variables set"

FOO="BAR" ./child.sh "command variable set"

CAR="STAR"
./child.sh "shell variable set"

export ABC="123"
./child.sh "env var variable set"

FOO="BAR" ./child.sh "command variable and env var set"

echo "variables in the shell"
printf "FOO : %s\n" "$FOO"
printf "CAR : %s\n" "$CAR"
printf "ABC : %s\n" "$ABC"