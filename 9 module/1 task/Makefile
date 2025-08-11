BIN := main
OBJ := main.o
SRC := main.c

CC := gcc
CFLAGS := -o

$(BIN): $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) $(BIN)

$(OBJ): $(SRC)
	$(CC) $(SRC) -c

.PHONY : clean

clean:
	rm -rf $(BIN) $(OBJ)
