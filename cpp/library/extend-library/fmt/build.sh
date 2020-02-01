#!/bin/sh

usage() {
	"Run build.sh xx.cc for fmt sample"
}

if [ $# != "1" ]; then
	usage
	exit 1
fi

file=$1
bin=${file%.cc}
echo g++ -O2 -g -ggdb -std=c++17 "${file}" -lfmt -o "${bin}"
g++ -O2 -std=c++17 "${file}" -lfmt -o "${bin}"
