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

#空の配列作成
fnameary=()
dnameary=()

#bashファイルのパスに拡張子(.tar.gz)を追加
#file_search_path=${bash_path}/\*.tar.gz
#カレントディレクトリを元に指定
file_search_path=./\*.tar.gz

#tar.gzファイル名のみを取得
for filepath in ${file_search_path}; do
    if [ -f $filepath ] ; then
        fnameary+=(`basename ${filepath}`)
#       echo `basename ${filepath}`
#       ファイル名のみ取得して配列に格納(上と同じ処理内容)
#       str=`basename ${filepath}`
#       echo ${str} #debug
        dnameary+=(`basename ${filepath} .tar.gz`)
#       echo `basename ${filepath} .tar.gz`
    fi
done

echo "圧縮ファイル一覧"
count=0
for i in ${fnameary[@]}; do
#   echo $i #debug
#   echo "圧縮展開先ディレクトリ"
#   echo ${dnameary[count]} #debug
#   ディレクトリ作成
    mkdir ${dnameary[count]}
    echo ./$i ./${dnameary[count]}
#   展開
    tar -xvzf $i -C ./${dnameary[count]}
    count=`expr $count + 1` #インクリメント
done

echo "展開先ディレクトリのパス一覧"
for i in ${dnameary[@]}; do
#   パスの生成(ここでは圧縮先にtmpディレクトリがあると想定)
    path=./${i}/tmp
    echo $path #debug
done


#圧縮コマンド(debug用)
#tar zcvf test.tar.gz test

#ループ文(10回分)
count=0
while true
do
    echo $count
    count=`expr $count + 1`
    if [ $count -eq 10 ]; then
        break
    fi
done

echo "end"
