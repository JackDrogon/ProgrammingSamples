EXTERN_LIB = -ltbb
CXXFLAGS = -std=c++1z $(EXTERN_LIB)

TARGETS := $(patsubst %.cc, %, $(wildcard *.cc))

.PHONY: all
all: $(TARGETS)

# hello: hello.cc
# concurrent_queue: concurrent_queue.cc

.PHONY: clean
clean:
	-$(RM) a.out *.o $(TARGETS)
