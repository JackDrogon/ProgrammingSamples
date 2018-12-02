CXX = g++

.PHONY : all clean

all : map

map : map.cc
	$(CXX) -o $@ $^
	./map

tag :
	- ctags -R *

clean :
	-$(RM) -rf map tags
