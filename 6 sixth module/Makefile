BIN := main
SRC := main.c abonent.c
OBJ := $(SRC:.c=.o)
HDR := abonent.h

CC := gcc
CFLAGS := -g

$(BIN): $(OBJ)
	$(CC) $(OBJ) -o $(BIN)

%.o: %.c $(HDR)
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm -rf $(BIN) $(OBJ)

