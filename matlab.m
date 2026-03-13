clc
char x y a b

M = input('Enter the vector coefficient of dx :');
N = input('Enter the vector coefficient of dy :');

F1 = diff(M,x);
F2 = diff(N,y);
F = F1 - F2;

limits = input('Enter 0 if the limits are constant, otherwise enter 1: ');

if (limits == 0)

    disp('your choice inner & outer integral limits are constant: ');

    y1 = input('Enter the y minimum value = ');
    y2 = input('Enter the y maximum value = ');

    x1 = input('Enter the x minimum value = ');
    x2 = input('Enter the x maximum value = ');

    fun1 = int(F,y1,y2);
    A = int(fun1,x1,x2);

else

    disp('your choice outer integral limits are constant and inner limits variable: ');

    F3 = input('Enter the above F value with function_handle in the form of MATLAB Expression F3: ');
    y1 = input('Enter the y minimum value = ');
    y2 = input('Enter the y maximum value = ');
    x1 = input('Enter the x minimum value = ');
    x2 = input('Enter the x maximum value = ');

    A = integral2(F3, x1, x2, y1, y2);

end

disp('The Area of the surface is A = ');
disp(A);
