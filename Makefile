
CC := g++
CFLAGS := -Wall
INCLUDE := -I $(wildcard ./external/*/include/)
LIBS := -L$(wildcard ./external/*/lib)
LIBS += -lraylib

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
