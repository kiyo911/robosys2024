#!/bin/bash

ng () {
	echo ${1}行目がちがうよ
	res = 1
}

res = 0

out = $(1 | ./plus)
[ "${out}" = 1 ] || ng "$LINENO"

