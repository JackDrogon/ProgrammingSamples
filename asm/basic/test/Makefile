YASM ?= yasm
YASMFLAGS = -f macho64
LD ?= ld
LDFLAGS = -macosx_version_min 10.7.0 -lSystem

TARGET = test
OBJ = $(TARGET).o
SRC = $(TARGET).asm

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $<

$(OBJ): $(SRC)
	$(YASM) $(YASMFLAGS) -o $@ $<

clean:
	-$(RM) -f $(OBJ) $(TARGET)
