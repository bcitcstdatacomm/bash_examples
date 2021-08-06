#!/usr/bin/env bash

clear

for COUNTER1 in {1..5}
do
  for COUNTER2 in {1..5}
  do
    for COUNTER3 in {1..5}
    do
      if [ "$COUNTER3" -eq 3 ]
      then
        break;
      fi

      if [ "$COUNTER2" -eq 3 ]
      then
        break 2;
      fi

      if [ "$COUNTER1" -eq 4 ]
      then
        break 3;
      fi

      printf "%d %d %d\n" "$COUNTER1" "$COUNTER2" "$COUNTER3"
    done
  done
done

echo "Done"
