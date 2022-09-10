#!/bin/bash

#使うファイルを全文表示
cat README.md

#1行目を指定
param=`sed -n 1p README.md`; if [[ "$param" == *clone* ]]; then echo "OK"; else echo "NG"; fi

#2行目を指定
param=`sed -n 2p README.md`; if [[ "$param" == *clone* ]]; then echo "OK"; else echo "NG"; fi

