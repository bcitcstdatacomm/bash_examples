#!/usr/bin/env bash

echo "The name of the script is $0"
echo "The pid of the script is $$"
echo "The number of arguments to the script is $#"

if [ $# -gt 0 ]
then
  echo "The arguments are $*"

  echo "The arguments with \$*"
  for ARG in $*
  do
    echo "$ARG"
  done

  echo "The arguments with \$@"
  for ARG in $@
  do
    echo "$ARG"
  done

  echo "The arguments with \"\$@\""
  for ARG in "$@"
  do
    echo "$ARG"
  done
fi

exit 255
