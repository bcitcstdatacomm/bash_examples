#!/usr/bin/env bash

function a_func()
{
  echo "called a"
}

function b_func()
{
  echo "called b"
}

eval "$1_func"
