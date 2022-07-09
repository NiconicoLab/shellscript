#!/bin/bash

echo "$#"

if [ $# -ne 0 ]; then
  for i; do
    echo -n "$i "
  done
  echo ""
fi

<< COMMENTOUT
コマンドライン引数を受け取りループ文を書く場合"${@}は不要"
↑の文と同じ意味になる
for I in "${@}"; do
  echo "$I"
done
COMMENTOUT
