CXX := clang++
CXXFLAGS := -O1 -g -fsanitize=address -fno-omit-frame-pointer

TARGET := user_after_free

.PHONY: all build run
all: build

build: $(TARGET)

$(TARGET): $(TARGET).cc
	$(CXX) $(CXXFLAGS) -o $@ $<

run: build
	ASAN_SYMBOLIZER_PATH=/usr/local/opt/llvm/bin/llvm-symbolizer ./user_after_free

.PHONY: clean
clean:
	-$(RM) -rf *.dSYM a.out $(TARGET)
