#include <stdio.h>
#include <stdlib.h>
#include "calculator.h"
#include "utils.h"

static OperatorEntry operator_table[] = {
    {'+', add},
    {'-', subtract},
    {'*', multiply},
    {'/', divide},
};

operation_func get_operation(char op) {
    size_t n = sizeof(operator_table) / sizeof(operator_table[0]);
    for (size_t i = 0; i < n; i++) {
        if (operator_table[i].op == op) {
            return operator_table[i].func;
        }
    }
    return NULL;
}

void run_calculator(void) {
    double a, b, result;
    char op;

    while (1) {
        printf("\nEnter expression (a op b), or q to quit: ");
        if (scanf(" %lf %c %lf", &a, &op, &b) != 3) {
            char c;
            scanf("%c", &c);
            if (c == 'q' || c == 'Q') {
                printf("Exiting calculator...\n");
                break;
            }
            printf("Invalid input! Type correctly or q to quit.\n");
            continue;
        }

        operation_func func = get_operation(op);
        if (!func) {
            printf("Unknown operator '%c'. Type h for help.\n", op);
            continue;
        }

        if (op == '/' && b == 0) {
            printf("Error: Division by zero!\n");
            continue;
        }

        result = func(a, b);
        printf("Result: %.2f\n", result);
    }
}
