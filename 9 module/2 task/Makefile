BIN := main
SRC := main.c directory_def.c
OBJ := main.o directory_def.o
HDR := server.h
CC := gcc
LIB := -lncurses

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN) $(LIB)

%.o: %.c $(HDR)
	$(CC) -c $< -o $@

clean:
	rm -f $(BIN) $(OBJ)

