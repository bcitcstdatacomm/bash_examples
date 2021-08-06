#!/usr/bin/env bash

function catch()
{
  printf "caught: SIG_%s\n\n" "$1"
}

clear
SIGNALS=$(kill -l)

# loop over all the signals, they are in the form of ##)\nSIG????
for SIGNAL in $SIGNALS
do
  # we just want the name of the signal, e.g. HUP not SIGHUP
  SIGNAL_NAME=$(command echo "$SIGNAL" | cut -c4-)

  # if it was ##) then the string will be empty
  # if it is KILL that will end the script
  # if it is STOP then it will put it in the background and you have to type "fg" to continue on
  if [ -n "$SIGNAL_NAME" ] && [ "$SIGNAL_NAME" != "KILL" ] && [ "$SIGNAL_NAME" != "STOP" ]
  then
    echo "$SIGNAL_NAME"
    trap 'catch "$SIGNAL_NAME"' "$SIGNAL_NAME"
    sleep 1
    kill -"$SIGNAL_NAME" $$
  fi
done

kill -KILL $$
