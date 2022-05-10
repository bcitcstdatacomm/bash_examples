#!/usr/bin/env bash

function parse_args()
{
  SHORT_FLAGS="c:d:"
  COUNT=1
  DELAY=0
  while getopts $SHORT_FLAGS: name
  do
    case "$name" in
      c)  COUNT="$OPTARG" ;;
      d)  DELAY="$OPTARG" ;;
      ?)  usage ;;
    esac
  done

  shift $(($OPTIND - 1))
  UNNAMED_PARAMETERS=("$*")
}

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
  if [ "$#" -eq 1 ]; then
    printf "ERROR: %s\n\n" "$1"
  fi

  SCRIPT_NAME=$(basename "$0")
  echo "Usage: $SCRIPT_NAME [ -c <# of times to display the message> ]
                  [ -d <delay between display in seconds> ]
                  message(s)"
  exit 2
}

function check_arguments()
{
  if ! is_variable_set "$COUNT"; then
    usage "-c missing"
  fi

  if ! is_integer "$COUNT"; then
    usage "the value to -c must be an integer"
  fi

  if ! is_variable_set "$DELAY"; then
    usage "-d missing"
  fi

  if ! is_integer "$DELAY"; then
    usage "the value to -d must be an integer"
  fi

  if ! is_variable_set "$UNNAMED_PARAMETERS"; then
    usage "the messages must be passed"
  fi
}

function main()
{
  for (( i=1; i<=$1; i++ ))
  do
    for message in $3
    do
      echo "$message"
    done

    if [ "$i" -lt "$1" ]; then
      sleep "$2"
    fi
  done
}

parse_args "$@"
check_arguments
main "$COUNT" "$DELAY" "${UNNAMED_PARAMETERS[@]}"
