#!/bin/bash

echo "start === $0 ==="

if [ $# -ne 3 ]; then
  echo "requires 3 arguments" 1>&2
else
  echo "$1 $2 $3"
fi

echo "end   === $0 ==="

