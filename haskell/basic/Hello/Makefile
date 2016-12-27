GHC = ghc

hello : hello.hs
	$(GHC) $^

.PHONY : clean

clean :
	-$(RM) -f hello *.o *.hi
