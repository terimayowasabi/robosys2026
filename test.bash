#!/bin/bash
# SPDX-FileCopyrightText: 2026 Tomoya Suzuki
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo ${1}行目のテスト失敗
	res=1
}


res=0

### NORMAL INPUT ###
out=$(echo "2+3" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 5.0 ]  || ng "$LINENO"

out=$(echo "8-3" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 5.0 ]  || ng "$LINENO"

out=$(echo "2*3" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 6.0 ]  || ng "$LINENO"

out=$(echo "4/2" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 2.0 ]  || ng "$LINENO"

out=$(echo "2*(2+3)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 10.0 ]  || ng "$LINENO"

out=$(echo "10/(2*(2+3))" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 1.0 ]  || ng "$LINENO"

out=$(echo "2*(2+3)-3*(1+2)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 1.0 ]  || ng "$LINENO"

out=$(echo "2(2+3)-3*(1+2)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 1.0 ]  || ng "$LINENO"

out=$(echo "sin(90)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 1.0 ]  || ng "$LINENO"

out=$(echo "cos(100+80)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = -1.0 ]  || ng "$LINENO"

out=$(echo "tan(100-100)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 0 ]  || ng "$LINENO"

out=$(echo "cos0" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = -1.0 ]  || ng "$LINENO"

out=$(echo "-2^2" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = -4.0 ]  || ng "$LINENO"

out=$(echo "2**3" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 8.0 ]  || ng "$LINENO"

out=$(echo "(-2)^(2+2)" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 16.0 ]  || ng "$LINENO"

out=$(echo "4^0.5" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 2.0 ]  || ng "$LINENO"

out=$(echo "9**0.5" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 3.0 ]  || ng "$LINENO"

out=$(echo "root16" | ./calc)
[ "$?" = 0 ]       || ng "$LINENO"
[ "${out}" = 4.0 ]  || ng "$LINENO"


### STRANGE INPUT ###
out=$(echo "3/0"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "root(-4)"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "2+"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "5*(1+3"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "4*/3"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "10^10000"| ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(./calc < /dev/null)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"

out=$(echo "" | ./calc)
[ "$?" = 1 ]       || ng "$LINENO"
[ "${out}" = "" ]  || ng "$LINENO"


[ "${res}" = 0 ] && echo OK
exit $res
