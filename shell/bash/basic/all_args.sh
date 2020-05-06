#!/usr/bin/env bash

# 只有一个
echo '===== run "$*"'
for arg in "$*"; do
	echo "- ${arg}"
done
echo

# 二次展开
echo '===== run $*'
for arg in $*; do
	echo "- ${arg}"
done
echo

# 和传入的一模一样
echo '===== run "$@"'
for arg in "$@"; do
	echo "- ${arg}"
done
echo

# 会将$@中二次展开
echo '===== run $@'
for arg in $@; do
	echo "- ${arg}"
done
