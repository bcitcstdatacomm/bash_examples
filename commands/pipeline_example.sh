#!/usr/bin/env bash

clear
echo "a b c 1 2 3"
echo "a b c 1 2 3" | tr '[:lower:]' '[:upper:]'
echo "a b c 1 2 3" | tr '[:lower:]' '[:upper:]' | tr -d ' '
