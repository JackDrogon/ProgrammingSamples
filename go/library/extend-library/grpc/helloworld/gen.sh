#!/bin/sh

protoc --go_out=plugins=grpc:. helloworld.proto
