#!/bin/sh

#$B0z?t$N8D?t%A%'%C%/(B
if [ $# -ne 2 ]; then
	echo "$B%(%i!<!'CM$r#2$DF~NO$7$F$/$@$5$$(B" 1>&2
	exit 1
fi
#$B<+A3?t$N%A%'%C%/(B
expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
	echo "$B%(%i!<!'<+A3?t$rF~NO$7$F$/$@$5$$(B" 1>&2
	exit 1
fi
#$BCM$,(B0$B$N%A%'%C%/(B
if [ $1 -eq 0 -o $2 -eq 0 ];then 
	echo "$B%(%i!<!'CM$,(B0" 1>&2
	exit 1
fi

#$B0z?t$rJQ?t$XJQ49(B
var1=$1
var2=$2

#$B:GBg8xLs?t$N7W;;(B
gcd(){
$B!!(Bwhile [ $var1 -ne $var2  ]
    do
    if [ $var1 -gt $var2  ];then
        var1=$(( var1-var2 ))
$B!!!!(Belse
        var2=$(( var2-var1 ))
    fi
$B!!(Bdone
echo "$B:GBg8xLs?t$O(B :$var1"
}

gcd $1 $2
