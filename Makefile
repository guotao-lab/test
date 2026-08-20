CC ?= gcc
CFLAGS ?= -Wall -Wextra -Werror -std=c11
TARGET := hello

.PHONY: all run clean

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) -o $@ $<

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)
