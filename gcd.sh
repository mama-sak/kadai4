#!/bin/sh

#引数の個数チェック
if [ $# -ne 2 ]; then
	echo "エラー：値を２つ入力してください" 1>&2
	exit 1
fi
#自然数のチェック
expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
	echo "エラー：自然数を入力してください" 1>&2
	exit 1
fi
#値が0のチェック
if [ $1 -eq 0 -o $2 -eq 0 ];then 
	echo "エラー：値が0" 1>&2
	exit 1
fi

#引数を変数へ変換
var1=$1
var2=$2

#最大公約数の計算
gcd(){
　while [ $var1 -ne $var2  ]
    do
    if [ $var1 -gt $var2  ];then
        var1=$(( var1-var2 ))
　　else
        var2=$(( var2-var1 ))
    fi
　done
echo "最大公約数は :$var1"
}

gcd $1 $2
