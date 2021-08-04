#!/usr/bin/env bash

ls *.sh | while read -r FILE
do
  echo "$FILE"
done

echo "Done"
