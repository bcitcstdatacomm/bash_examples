#!/usr/bin/env bash

function is_variable_set()
{
  if [ -n "$1" ]; then
    return 0
  fi

  return 1
}

function is_integer()
{
    case "${1#[+-]}" in
        (*[!0123456789]*) return 1 ;;
        ('')              return 1 ;;
        (*)               return 0 ;;
    esac
}

function usage()
{
  SCRIPT_NAME=`basename "$0"`
  echo "Usage: $SCRIPT_NAME [ -c | --count <# of times to display the message> ]
                        [ -d | --delay <delay between display in seconds> ] message(s)"
  exit 2
}

function check_arguments()
{
  if is_variable_set "$COUNT"; then
    if ! is_integer "$COUNT"; then
      usage
    fi
  fi

  if is_variable_set "$DELAY"; then
    if ! is_integer "$DELAY"; then
      usage
    fi
  fi

  if ! is_variable_set "$UNNAMED_PARAMETERS"; then
    usage
  fi
}

function main()
{
  COUNT=1
  DELAY=0
  eval set -- "$PARSED_ARGUMENTS"

  while :
  do
    case "$1" in
      -c | --count) COUNT="$2" ; shift 2 ;;
      -d | --delay) DELAY="$2" ; shift 2 ;;
      --) shift; break ;;
      *) echo "Unexpected option: $1 - check getopts argument"
         usage ;;
    esac
  done

  UNNAMED_PARAMETERS=("$@")

  check_arguments

  for (( i=1; i<=$COUNT; i++ ))
  do
    for message in "${UNNAMED_PARAMETERS[@]}"
    do
      echo "$message"
    done

    if [ "$i" -lt "$COUNT" ]; then
      sleep "$DELAY"
    fi
  done
}

SHORT_FLAGS="c:d:"
LONG_FLAGS="count:,delay:"
PARSED_ARGUMENTS=$(getopt -a -n alphabet -o $SHORT_FLAGS --long $LONG_FLAGS -- "$@")
VALID_ARGUMENTS=$?

if [ "$VALID_ARGUMENTS" != "0" ]; then
  usage
fi

main "$PARSED_ARGUMENTS"
