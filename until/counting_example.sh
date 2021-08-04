#!/usr/bin/env bash

COUNTER=1

until [ $COUNTER -gt 10 ]
do
  echo "$COUNTER"
  ((COUNTER++))
done

echo "Done"
