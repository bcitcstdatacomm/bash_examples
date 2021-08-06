#!/usr/bin/env bash

clear && ls
clea && echo "should not appear"
echo "should appear" || clear
ech "should fail" || echo "should appear" || clear

echo "******"

clea 2> /dev/null && echo "should not appear"
echo "should appear" || clear
ech "should fail" 2> /dev/null || echo "should appear" || clear
