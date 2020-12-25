#!/bin/sh

#スクリプトの絶対パスの取得
SCRIPT_DIR=$(cd $(dirname $0); pwd)
#echo $SCRIPT_DIR #debug

#変数(bash_path)にbashのパスを格納
bash_path=$SCRIPT_DIR
#echo $bash_path

#bashファイルのパスにワイルドカード(*)を追加
dir_search_path=${bash_path}/\*

#bashファイルのパスに拡張子(.c)を追加
file_search_path=${bash_path}/\*.c

#空の配列作成
fileary=()
dirary=()

#ファイル検索と配列に格納
for filepath in ${file_search_path}; do
    if [ -f $filepath ] ; then
        fileary+=("$filepath")
    fi
done

#ディレクトリ検索と配列に格納
for filepath in ${dir_search_path}; do
    if [ -d $filepath ] ; then
        dirary+=("$filepath")
    fi
done

echo "ファイル一覧"
for i in ${fileary[@]}; do
    echo $i #debug
done

echo "ディレクトリ一覧"
for i in ${dirary[@]}; do
    echo $i #debug
done

# test code
#指定ファイルの検索
FILE1="test.c"
FILE2="test2.txt"
if [ -e $FILE1 ]; then
    echo "File1 exists."
elif [ -e $FILE2 ]; then
    echo "File2 exists."
else
    echo "File nothing."
fi

#指定ディレクトリの検索
DIR1="tmp1"
DIR2="tmp2"
if [ -e $DIR1 ]; then
    echo "Dir1 exists."
elif [ -e $DIR2 ]; then
    echo "Dir2 exists."
else
    echo "Dir nothing."
fi

