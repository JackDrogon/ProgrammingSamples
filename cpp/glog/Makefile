CC       := gcc
CFLAGS   := -Weverything
CXX      := g++
CXXFLAGS := -Weverything -std=c++1y
LD       := g++
LDFLAGS  := -lglog

ifeq ($(DEBUG),yes)
	CFLAGS   += -g -pg -ggdb3
	CXXFLAGS += -g -pg -ggdb3
else
	CFLAGS   += -DNDEBUG
	CXXFLAGS += -DNDEBUG
endif


TARGET := hello
OBJS   := hello.o


all: $(TARGET)
.PHONY: all clean run

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

run: $(TARGET)
	./$(TARGET)

tags:
	ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q --extra=+f

gtags:
	gtags -c

clean:
	-$(RM) -r $(OBJS) $(TARGET) $(TARGET).dSYM $(TARGET).*.$(USER).* $(TARGET).INFO
