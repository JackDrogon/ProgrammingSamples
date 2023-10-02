GHC = ghc

hello : hello.hs
	$(GHC) $^

name: name.hs
	$(GHC) $^

lambda: lambda.hs
	$(GHC) $^

.PHONY : clean

clean :
	-$(RM) -f hello *.o *.hi
