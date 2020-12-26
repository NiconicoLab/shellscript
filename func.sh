#!/bin/bash
# 関数の定義
func_print1 () {
    echo "func print 1"
}

func_print2 () {
    echo "func print 2 $1 and $2"
}

add_8bit () {
    ret=`expr $1 + $2`
    return $ret
}

add () {
    ret=`expr $1 + $2`
    return
}

# 関数の呼び出し
func_print1
func_print2 arg1 arg2

add_8bit 1 2
echo $?

add 1000 1500
echo $ret
