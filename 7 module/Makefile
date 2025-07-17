BIN := main
OBJ := main.o
LIBOBJ := add.o div.o mul.o sub.o
SRC := main.c add.c div.c mul.c sub.c
HDR := calculator.h

CC := gcc
CFLAGS := -g
LIB := libcalc.a

.PHONY : clean

%.o: %.c  $(HDR)
	$(CC) $(CFLAGS) -c $< -o $@	 

all: $(BIN)

$(LIB): $(LIBOBJ)
	ar rcs $(LIB) $@ $^ 

$(BIN): $(OBJ) $(LIB)
	$(CC) $(OBJ) -L. -lcalc -o $(BIN) 

clean:
	rm -rf $(BIN) $(OBJ) $(LIB) $(LIBOBJ)
