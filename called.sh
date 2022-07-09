#!/bin/bash

echo "start === $0 ==="

if [ $# -ne 3 ]; then
  echo "Usage\$$0 requires 3 arguments" 1>&2
else
  echo "$1 $2 $3"
  if [ $1 = temp1 ]; then
    echo "\$1 is match (string : temp1)"
  fi
  if [ $2 = temp2 ]; then
    echo "\$2 is match (string : temp2)"
  fi
  if [ $3 = temp3 ]; then
    echo "\$3 is match (string : temp3)"
  fi
fi

echo "end   === $0 ==="

