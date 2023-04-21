#!/usr/bin/env bash

GO111MODULE=off go test -bench . false_sharing_test.go
