#!/usr/bin/env bash

clear

touch foo.txt
touch foo.tix
touch bar.tbc

echo "****** *"
ls *

echo "****** *.txt"
ls *.txt

echo "****** *.t??"
ls *.t??

echo "****** *.t[ix]?"
ls *.t[ix]?

echo "****** foo*.*"
ls foo.*

rm foo.* > /dev/null
rm bar.* > /dev/null
