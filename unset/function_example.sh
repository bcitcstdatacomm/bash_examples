#!/usr/bin/env bash

function foobar()
{
  echo "Hello, World!"
}

clear

echo "set"
foobar

echo "unset"
unset -f foobar
foobar
