# GNU Makefile

CC = gcc
CFLAGS = -Wall -Iinclude
OBJ = src/main.o src/calculator.o src/operations.o src/utils.o

kalc: $(OBJ)
	$(CC) $(OBJ) -o kalc.out

clean:
	rm -f $(OBJ) kalc.out
