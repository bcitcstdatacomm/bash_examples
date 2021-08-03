#!/usr/bin/env bash

function can_read()
{
  FILENAME=$1

  if [ -w "$FILENAME" ]
  then
    echo "'$FILENAME' is readable"
  else
    echo "'$FILENAME' is not readable"
  fi
}

function can_write()
{
  FILENAME=$1

  if [ -w "$FILENAME" ]
  then
    echo "'$FILENAME' is writeable"
  else
    echo "'$FILENAME' is not writeable"
  fi
}

function can_execute()
{
  FILENAME=$1

  if [ -x "$FILENAME" ]
  then
    echo "'$FILENAME' is executable"
  else
    echo "'$FILENAME' is not executable"
  fi
}

clear

TESTFILE="./testfile"

rm -f "$TESTFILE" > /dev/null

if [ -e "$TESTFILE" ]
then
  echo "'$TESTFILE' should not exist!"
  exit 2
fi

echo "Creating '$TESTFILE'"
touch "$TESTFILE"

if [ -e "$TESTFILE" ]
then
  echo "'$TESTFILE' exist!"
else
  echo "'$TESTFILE' should exist!"
  exit 2
fi

if [ -f "$TESTFILE" ]
then
  echo "'$TESTFILE' exists as a file"
fi

if [ -d "$TESTFILE" ]
then
  echo "'$TESTFILE' should not exist as a directory!"
  exit 2
fi

if [ ! -s testfile ]
then
  echo "'$TESTFILE' is empty"
fi

echo "Adding data to '$TESTFILE'"
cat "$0" > "$TESTFILE"

if [ -s "$TESTFILE" ]
then
  echo "'$TESTFILE' is not empty"
fi

chmod 000 "$TESTFILE"

can_read "$TESTFILE"
can_write "$TESTFILE"
can_execute "$TESTFILE"

chmod 700 "$TESTFILE"

can_read "$TESTFILE"
can_write "$TESTFILE"
can_execute "$TESTFILE"

rm -f "$TESTFILE" > /dev/null
