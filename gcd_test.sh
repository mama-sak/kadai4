ns="/tmp/$$-ans"
  4 result="/tmp/$$-result"
    5 err="/tmp/$$-error"
      6
        7 #正常系
	  8 echo "3" > ${ans}
	    9 ./gcd.sh 9 6 > ${result}
	     10 diff ${ans} ${result} || echo "成功" >> ${err}
	      11
	       12 #異常系
	        13 #入力なし
		 14 echo "Error!" > ${ans}
		  15 ./gcd.sh > ${result}
		   16 diff ${ans} ${result} || echo "入力値無のためエラー" >> ${err}
		    17 #入力値１個
		     18 echo "Error!" > ${ans}
		      19 ./gcd.sh 99 > ${result}
		       20 diff ${ans} ${result} || echo "入力値が１つのためエラー" >> ${err}
		        21 #入力値3個
			 22 echo "Error!" > ${ans}
			  23 ./gcd.sh 1 2 3 > ${result}
			   24 diff ${ans} ${result} || echo "入力値が３つのためエラー" >> ${err}
			    25 #入力値がマイナス
			     26 echo "Error!" > ${ans}
			      27 ./gcd.sh 1 -1 > ${result}
			       28 diff ${ans} ${result} || echo "入力値がマイナスの為エラー" >> ${err}
			        29 #入力値が文字列
				 30 echo "Error!" > ${ans}
				  31 ./gcd.sh "qwert" > ${result}
				   32 diff ${ans} ${result} || echo "入力値が文字列のためエラー" >> ${err}
