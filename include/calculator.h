#ifndef CALCULATOR_H
#define CALCULATOR_H

#include "operations.h"

typedef struct {
    char op;
    operation_func func;
} OperatorEntry;

void run_calculator(void);
operation_func get_operation(char op);

#endif
