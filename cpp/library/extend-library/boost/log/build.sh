#!/bin/sh

\g++ -DBOOST_LOG_DYN_LINK hello.cc  -lboost_log-mt -o hello
