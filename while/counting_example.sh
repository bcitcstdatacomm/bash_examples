#!/usr/bin/env bash

COUNTER=1

while [ $COUNTER -le 10 ]
do
  echo "$COUNTER"
  ((COUNTER++))
done

echo "Done"
