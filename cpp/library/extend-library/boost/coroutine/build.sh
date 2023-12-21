#!/bin/sh
g++ coroutine.cc -L/home/linuxbrew/.linuxbrew/lib -lboost_coroutine -lboost_context-mt -lboost_system -static
