# Link Order Test

## Test duplicate symbol link
1. if all symbol in .o, link failed
2. if duplicate symbol(.o .a) one in .o, one in .a, link successfully
3. test-reverse(duplicate .a before .o) gcc failed, clang successful(use .a)


## Summary
1. if all is .o, failed
2. if .a .o, use .o symbol
	.a before, gcc failed, clang successful
