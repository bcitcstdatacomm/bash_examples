''#!/usr/bin/env bash

clear
echo "Hello World" > foo.txt
echo "foo.txt contains"
cat foo.txt

echo "***************"
echo "Some more text" >> foo.txt
echo "foo.txt contains"
cat foo.txt

rm *.txt
