GCC ?= gcc

$(info gcc == $(GCC))


SRC = $(shell find -iname "*.c")
OBJ_FILES = $(patsubst %.c, %.o, $(SRC))
INCLUDE = $(shell find -iname "*.h" -exec dirname {} \; | sed 's/^./-I./g' | xargs)

$(info $(SRC) $(OBJ_FILES) $(INCLUDE))

define some_macro
 echo "Hello World"
 echo "Hello World! Again!" $@
endef

$(info $(some_macro))