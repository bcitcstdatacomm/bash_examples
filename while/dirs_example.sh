#!/usr/bin/env bash

ls -d ../*/ | while read -r DIR
do
  echo "$DIR"
done

echo "Done"
