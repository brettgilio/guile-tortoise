CFLAGS = `guile-config compile`
LIBS = `guile-config link` -lm

CC=gcc

.PHONY: clean build run

build: main

clean:
	rm -f main main.o

run: main
	./main

main: main.o
	gcc $< -o $@ $(LIBS)

main.o: main.c
	gcc -c $< -o $@ $(CFLAGS)
