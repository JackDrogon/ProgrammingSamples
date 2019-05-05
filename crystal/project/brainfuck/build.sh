#!/bin/sh

LLVM_CONFIG=/usr/local/opt/llvm@6/bin/llvm-config crystal build brainfuck.cr
/usr/local/opt/llvm/bin/lli hello.ll
