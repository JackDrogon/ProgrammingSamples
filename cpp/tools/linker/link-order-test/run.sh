#!/bin/bash

# TARGETS="
# hello
# test
# test-reverse
# test-link
# test-link-reverse
# test-fail
# "

TARGETS="$(grep main.o Makefile | grep : | awk -F: '{print $1}')"

for target in $TARGETS; do
	echo "build and run: ${target}"
	make "${target}" >/dev/null 2>&1
	./"${target}"
	echo "-----------------------"
done
