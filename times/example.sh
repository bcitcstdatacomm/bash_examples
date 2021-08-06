#!/usr/bin/env bash

clear

times

for COUNTER in {1..60}
do
  if [ $(( $COUNTER % 5 )) -eq 0 ]
  then
    echo "$COUNTER"
  fi

  sleep 1
done

times

echo "Done"