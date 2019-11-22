#!/bin/sh

len() {
	var="test len"
	echo ${#var}
}

main() {
	len
}

main
