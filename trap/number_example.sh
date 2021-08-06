#!/usr/bin/env bash


function catch()
{
  printf "caught: SIG_%s\n" "$1"
}

clear

trap 'catch "HUP"' HUP
trap 'catch "INT"' INT
trap 'catch "QUIT"' QUIT
trap 'catch "ABRT"' ABRT
trap 'catch "ALRM"' ALRM
trap 'catch "TERM"' TERM

for i in {1..7}
do
  sleep 3

  case $i in
    1) SIGNAL=1 ;;
    2) SIGNAL=2 ;;
    3) SIGNAL=3 ;;
    4) SIGNAL=6 ;;
    5) SIGNAL=14 ;;
    6) SIGNAL=15 ;;
    7) SIGNAL=9 ;;
  esac

  echo sending "$SIGNAL"
  kill -"$SIGNAL" $$
done
