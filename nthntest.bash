#!/bin/bash
# SPDX-FileCopyrightText: 2024 Hiromu Kiyokawa <hirosan315911@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo ${1}行目がちがうよ
	res=1
}

res=0

out=$(./nthn 1)
[ "${out}" = 1 ] || ng "$LINENO"

###無効な入力のテスト###
out=$(seq5 | ./nthn)
[ "$?" = 1] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

