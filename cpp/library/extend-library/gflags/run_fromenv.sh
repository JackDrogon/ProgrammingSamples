#!/bin/bash

# TODO: Add auto sep, or use group

SRC=fromenv.cc
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

run FLAGS_port=1010 $BIN --fromenv="port"

print_sep

run $BIN --fromenv=port

print_sep

run $BIN --tryfromenv=port
