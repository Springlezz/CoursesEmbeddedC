BIN := main
SRC := main.c
OBJ := main.o

CC := gcc

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

clean:
	rm -f $(BIN) $(OBJ)