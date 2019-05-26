#!/bin/bash

# TODO: Add auto sep, or use group

SRC=test_gflags_package.cc
BIN="./${SRC%.*}"

g++ -lgflags $SRC -o $BIN

run() {
	echo -n -e "$*" "\t=> "
	eval $*
}

print_sep() {
	echo "-------------------------------------"
}

run $BIN

print_sep

run $BIN -version
run $BIN --version

print_sep

run $BIN -message foobar
run $BIN -message foobar -verbose

print_sep

run FLAGS_message=foobar $BIN --fromenv="message"
