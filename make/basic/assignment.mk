#!/usr/bin/env make -f

date=$(shell date)

.PHONY: all var
all: var
	@echo all: $(date)

# date的求值是在进入var的target就进行了求值，而不是在echo的时候
var:
	@sleep 1
	@echo var: $(date)
