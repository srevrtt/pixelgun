CC := tcc

all:
	make build
	rm *.o

build:
	$(CC) -static -c src/*.c
	$(CC) *.o -o bin/pixelgun -lm -lX11 -lGL
