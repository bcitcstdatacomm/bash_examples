#!/usr/bin/env bash

clear

echo "Hello"
echo "World"

set -v

echo "Hello"
echo "World"

read -r VAR
echo "$VAR"

echo "a b c 1 2 3" | tr '[:lower:]' '[:upper:]' | tr -d ' '
