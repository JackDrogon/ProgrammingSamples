uname_S := $(shell sh -c 'uname -s 2>/dev/null || echo not')
ifeq ($(uname_S),Darwin)
	AR := ar rcs
else
	AR := ar rcsD # D remove ar time
endif

.DEFAULT_GOAL = hello

libhello.a: hello.o
	$(AR) $@ $^

hello: main.o libhello.a
	$(CXX) $^ -o $@

test: main.o test.o libhello.a
	$(CXX) $^ -o $@

test-reverse: main.o libhello.a test.o
	# gcc failed, clang success
	$(CXX) $^ -o $@

test-link: main.o test.o
	$(CXX) $^ -L. -lhello -o $@

test-link-reverse: main.o test.o
	$(CXX) main.o -L. -lhello test.o -o $@

test-fail: main.o test.o hello.o
	$(CXX) $^ -o $@

.PHONY: clean
clean:
	-$(RM) *.o *.a hello a.out test test-*
