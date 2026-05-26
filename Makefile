CC      ?= cc
CFLAGS  ?= -std=c23 -Wall -Wextra -Wpedantic -O3
PREFIX  ?= $(HOME)/.local
BINDIR  := $(PREFIX)/bin

TARGET  := my-app 
SRC     := src/main.c
BUILD   := build
BIN     := $(BUILD)/$(TARGET)

all: build

build: $(BIN)

$(BIN): $(SRC)
	mkdir -p $(BUILD)
	$(CC) $(CFLAGS) $(SRC) -o $(BIN)

install: $(BIN)
	install -Dm755 $(BIN) $(BINDIR)/$(TARGET)

uninstall:
	rm -f $(BINDIR)/$(TARGET)

clean:
	rm -rf $(BUILD)

run: $(BIN)
	./$(BIN)

.PHONY: all build install uninstall clean run
