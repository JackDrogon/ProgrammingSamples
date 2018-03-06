#!/usr/bin/env make -f

hello:
	@echo Hello

list:
	@for d in a b c; \
		do \
		echo $$d/*; \
	done > list.txt
