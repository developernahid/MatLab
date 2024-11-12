pkg load symbolic;
syms x;
% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
n = input('Number of iteration: ');
% Finding Functional Value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));

% Implementing Bisection Method
if fa*fb > 0
    disp('Given initial values do not bracket the root.');
else
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    for i = 1:n
        c = (a + b) / 2;
        fc = eval(subs(y, x, c));
        fprintf('%f\t%f\t%f\t%f\n', a, b, c, fc);

        if fa * fc < 0
            b = c;
        else
            a = c;
        end
    end
    fprintf('\nAfter %d iterations, the root approximation is: %f\n', n, c);
end
