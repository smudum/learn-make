#include <magic2.h>
#include <magic.h>
#include <stdio.h>

extern const char msg[];

int main() {
    //printf("Hello, World!\n\n");
    printf("%s", msg);
    printf("The magic number is %d\n", MAGIC_NUMBER);
    printf("The magic number is %d\n", MAGIC_NUMBER_2);
    return 0;
}