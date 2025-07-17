BIN := main
OBJ := main.o
LIBOBJ := add.o div.o mul.o sub.o
SRC := main.c add.c div.c mul.c sub.c
HDR := calculator.h

CC := gcc
CFLAGS := -fPIC -g
LIB := libcalc.so

.PHONY : clean

%.o: %.c  $(HDR)
	$(CC) $(CFLAGS) -c $< -o $@	 

all: $(LIB) $(BIN)

$(LIB): $(LIBOBJ)
	$(CC) -shared -o $(LIB) $(LIBOBJ) 

$(BIN): $(OBJ) $(LIB)
	$(CC) $(OBJ) -L. -lcalc -Wl,-rpath=. -o $(BIN) 

clean:
	rm -rf $(BIN) $(OBJ) $(LIB) $(LIBOBJ)


