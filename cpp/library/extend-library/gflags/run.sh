#!/bin/bash

# TODO: Add auto sep, or use group

g++ -lgflags gflags.cc -o gflags

run() {
	echo -n -e "$*" "\t=> "
	eval $*
}

print_sep() {
	echo "-------------------------------------"
}

run ./gflags

print_sep

run ./gflags -version
run ./gflags --version

print_sep

run ./gflags -message foobar
run ./gflags -message foobar -verbose

print_sep

run FLAGS_message=foobar ./gflags --fromenv="message"
