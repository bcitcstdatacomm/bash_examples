#!/usr/bin/env bash


function cleanup()
{
  echo "Cleaning up"
}

clear

trap cleanup EXIT
ls -al
