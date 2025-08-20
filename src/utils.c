#include <stdio.h>
#include "utils.h"

void print_banner(void) {
    printf("=============================\n");
    printf("      Complex Calculator     \n");
    printf("=============================\n");
    print_help();
}

void print_help(void) {
    printf("Supported operators: +, -, *, /\n");
    printf("Usage: <num1> <op> <num2>\n");
    printf("Example: 5 * 3\n");
    printf("Type 'q' to quit.\n");
}
