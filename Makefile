#OBJ_FILES = main.o msg.o

#Using pattern substitution func
#SRC = main.c msg.c

#Using shell cmd
#SRC = $(shell find -iname "*.c")
#OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
#OBJ_FILES = $(SRC:%.c=%.o)
#INCLUDE = -I ./include/magic -I ./include/magic2
#INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

include includeme.mk

all: main
	@

run: all
	@./main

#main.o : main.c
#	gcc -c main.c

#main: main.o
#	gcc main.o -o main

main: $(OBJ_FILES)
#	gcc $^ -o $@
	$(GCC) $^ -o $@
	$(some_macro)

%.o: %.c
	$(GCC) $(INCLUDE) -c $^ -o $@
	$(some_macro)

clean:
	rm -f main $(OBJ_FILES)