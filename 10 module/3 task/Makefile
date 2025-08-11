BIN := main
SRC := main.c bash.c
OBJ := main.o bash.o
HDR := bash.h
CC := gcc

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

%.o: %.c $(HDR)
	$(CC) -c $< -o $@

clean:
	rm -f $(BIN) $(OBJ)
