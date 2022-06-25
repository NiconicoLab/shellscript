#!/bin/bash

path1=/hoge/hoge/file.txt
path2=/hoge/hoge/file.csv
path3=/hoge/hoge/file.xls
path4=/hoge/hoge/file.pdf
path5=/hoge/hoge/file.cpp
dirpath=/hoge/hoge/
filename=file.exe

echo ${path1}
echo ${path2}
echo ${path3}
echo ${path4}
echo ${path5}
echo ${dirpath}${filename}

echo "========================="
../c/bash/arg ${path1} ${path2} ${path3} ${path4} ${path5} ${dirpath}${filename}
