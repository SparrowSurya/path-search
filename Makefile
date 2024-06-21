
CC := g++
CFLAGS := -Wall
INCLUDE := -I $(wildcard ./external/*/include/)
LIBS := -L$(wildcard ./external/*/lib)
LIBS += -l:libraylib.a

BUILD := build
SRC := src
TARGET := main
OUTPUT := $(BUILD)/$(TARGET)

.PHONY: run build clean

run: build
	./$(OUTPUT)

build:
	@[ -d $(BUILD) ] || mkdir $(BUILD)
	$(CC) ./main.c -o ./$(OUTPUT) $(CFLAGS) $(INCLUDE) $(LIBS) $(PROGRAM)

clean:
	rm -rf $(BUILD)
