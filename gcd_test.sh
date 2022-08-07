#!/bin/bash

tmp="/tmp/$$"

ERROR_EXIT(){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#入力値0個
echo "値は２つ入力してください"
./gcd.sh > $tmp-ans && ERROR_EXIT "test5-1:error"
diff $tmp-ans $tmp-quant ||ERROR_EXIT "test5-2:error"

#入力値１個
echo "値は２つ入力してください"
./gcd.sh 7 > $tmp-ans && ERROR_EXIT "test4-1:error" 
diff $tmp-ans $tmp-quant || ERROR_EXIT "test4-2:error"

#入力値3個
echo "値は２つ入力してください" > $tmp-quant
./gcd.sh 1 2 3 > $tmp-ans && ERROR_EXIT "test3-1:error"
diff $tmp-ans $tmp-quant || ERROR_EXIT "test3-2:error"

#入力値がマイナス
echo "正の整数を入力してください" > $tmp-num
./gcd.sh 1 -1 > $-ans && ERROR_EXIT "test2-1:error"
diff $tmp-ans $tmp-num || ERROR_EXIT "test2-2:error"

#入力値が0
echo "正の整数を入力してください" > $tmp-num
./gcd.sh 0 99 > $-ans && ERROR_EXIT "test6-1:error"
diff $tmp-ans $tmp-num || ERROR_EXIT "test6-2:error"

#入力値が文字列
echo "自然数を入力してください" > $tmp-nat
./gcd.sh "qwert" > $tmp-ans && ERROR_EXIT "test1-1: error"
diff $tmp-ans $tmp-nat || ERROR_EXIT "test1-2:error" 

rm -f $tmp-*
