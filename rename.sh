#!/bin/bash

#実行フォルダのみを検索し，拡張子を .txt から.csvに変更
for filename in *.txt;
do
    mv $filename ${filename%.txt}.csv;
done

#フォルダ配下を再帰的に検索し，ファイルの拡張子を一括で変換する方法
#拡張子を.txt から.csvに変更
#全角文字が入るファイル名は未対応
for filename in `find . -type f -name "*.txt"`
do
    dirname=`dirname $filename`
    basename=`basename $filename .txt`
    echo "$filename -> $dirname/$basename.csv"
    mv $filename $dirname/$basename.csv;
done
