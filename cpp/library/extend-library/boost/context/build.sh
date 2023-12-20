#!/bin/sh

clang++ fibonacci.cc -std=c++17 -L/home/linuxbrew/.linuxbrew/lib -lboost_context-mt -o fibonacci
