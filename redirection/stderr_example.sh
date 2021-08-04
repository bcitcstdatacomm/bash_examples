#!/usr/bin/env bash

clear

ech "OOPS" > foo.txt 2> error.txt
echo "foo.txt contains"
cat foo.txt
echo "error.txt contains"
cat error.txt

rm *.txt
