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
    1) SIGNAL="HUP" ;;
    2) SIGNAL="INT" ;;
    3) SIGNAL="QUIT" ;;
    4) SIGNAL="ABRT" ;;
    5) SIGNAL="ALRM" ;;
    6) SIGNAL="TERM" ;;
    7) SIGNAL="KILL" ;;
  esac

  echo sending "$SIGNAL"
  kill -s "$SIGNAL" $$
done
