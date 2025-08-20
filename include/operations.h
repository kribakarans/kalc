#ifndef OPERATIONS_H
#define OPERATIONS_H

typedef double (*operation_func)(double, double);

double add(double a, double b);
double subtract(double a, double b);
double multiply(double a, double b);
double divide(double a, double b);

#endif
