CC=gcc
CFLAGS=-I.
DEPS = print.h
OBJ = hello.o print.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
