#!/bin/sh

string_len() {
        if [ "$#" -eq 0 ]
		echo "no param"
		exit 1
        then
		local str=$0
		echo ${#str}
        fi
}

# sub
# gsub
