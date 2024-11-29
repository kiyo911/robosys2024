#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hiromu Kiyokawa <hirosan315911@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo ${1}行目がちがうよ
	res=1
}

res=0

###正しい入力###
out=$(seq 5 | ./nthn)
[ "$?" = 0 ] || ng "$LINENO"

###対応していない入力###
out=$(echo l | ./nthn)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./nthn)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo あ | ./nthn)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 阿 | ./nthn)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LNENO"

[ "${res}" = 0 ] && echo OK
exit $res

