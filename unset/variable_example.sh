#!/usr/bin/env bash

clear

echo "not set"
echo "$FOOBAR"

echo "set"
FOOBAR="Hello, World!"
echo "$FOOBAR"

echo "unset"
unset -v FOOBAR
echo "$FOOBAR"
