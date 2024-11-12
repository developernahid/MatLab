f = @(x) 3*x-cos(x)-1;  % Nonlinear equation
% Inputs
x0 =input('Enter first guess: ');
x1 = input('Enter second guess: ');
e =input('Enter tolerable error: ');
N = input('Enter maximum iterations: ');

step = 1;
while true
    f0 = f(x0);
    f1 = f(x1);

    if f0 == f1
        fprintf('Mathematical error.\n');
        return;
    end

    % Secant Method Formula
    x2 = x1 - (x1 - x0) * f1 / (f1 - f0);
    f2 = f(x2);

    fprintf('Iteration-%d: x2 = %.6f and f(x2) = %.6f\n', step, x2, f2);

    % Update values for next iteration
    x0 = x1;
    x1 = x2;

    step = step + 1;

    if abs(f2) <= e
        fprintf('\nRoot is: %.6f\n', x2);
        break;
    elseif step > N
        fprintf('Not convergent.\n');
        break;
    end
end

