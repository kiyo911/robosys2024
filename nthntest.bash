#!/bin/bash

ng () {
	echo ${1}行目がちがうよ
	res=1
}

res=0

out=$(./nthn 1)
[ "${out}" = 1 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

