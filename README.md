# matlab-tutorial

## Matlab Experiment

## Git

clc
clear

syms x y

disp('Evaluation of Area using Greens Theorem')

M = input('Enter the vector coefficient of dx : ');
N = input('Enter the vector coefficient of dy : ');

F1 = diff(M,x);
F2 = diff(N,y);
F = F1 - F2;

limits = input('Enter 0 if the limits are constant, otherwise enter 1: ');

if (limits == 0);

    disp('Inner and outer limits are constant')

    y1 = input('Enter the y minimum value = ');
    y2 = input('Enter the y maximum value = ');

    x1 = input('Enter the x minimum value = ');
    x2 = input('Enter the x maximum value = ');

    fun1 = int(F,y,y1,y2);
    A = int(fun1,x,x1,x2);

else

    disp('Outer limits constant and inner limits variable')

    F3 = matlabFunction(F,'vars',[x y]);

    y1 = input('Enter the y minimum value = ');
    y2 = input('Enter the y maximum value = ');
    x1 = input('Enter the x minimum value = ');
    x2 = input('Enter the x maximum value = ');

    A = integral2