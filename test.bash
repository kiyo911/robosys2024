#!/bin/bash

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0
a=清川
[ "$a" = 浦河 ] || ng "$LINENO"
[ "$a" = 清川 ] || ng "LINENO"

exit "$res"
