#!/bin/sh

# @doc: bash 中 0 为真（ true ），非 0 为假（ false ）

if ls . &> /dev/null
then
	echo "0"
else
	echo "Not 0"
fi
