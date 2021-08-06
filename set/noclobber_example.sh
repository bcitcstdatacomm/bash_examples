#!/usr/bin/env bash

clear

set -C
echo "Hello" > out.txt
cat out.txt
echo "World" > out.txt
cat out.txt
echo "World" >| out.txt
cat out.txt

rm out.txt > /dev/null
