#!/usr/bin/env bash

set -e

function error_handler()
{
  STATUS=$?

  echo "Exiting"

  [ $STATUS -eq 0 ] && exit 0

  echo "Error handler, exit status: $STATUS"

  exit 2
}

clear

trap error_handler EXIT
ech "oops this won't work"
echo "won't see this"
