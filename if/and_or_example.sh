#!/usr/bin/env bash

if [ 1 -lt 2 ] && [ "a" = "a" ]
then
  echo "both true"
else
  echo "one or more were false"
fi

if [ 1 -lt 2 ] || [ "a" = "a" ]
then
  echo "one or more were true"
else
  echo "both false"
fi
