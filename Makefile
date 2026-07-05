ifeq ($(OS),Windows_NT)
    uname_S := Windows
else
    uname_S := $(shell uname -s)
endif

ifeq ($(uname_S), Linux)
	target = game
endif

ifeq ($(uname_S), Windows)
	target = game.exe
endif

$(target): 
	gcc src/main.c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o build/$@
	build/$@