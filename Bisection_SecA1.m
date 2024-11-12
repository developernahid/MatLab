% Assuming an initial bracket of [3, 4], what would be the second (at the end of 2 iterations) iterative value of the root of the function f(x) = x/2−3√(x+1) using the bisection method. Find the absolute relative approximate error and the number of significant digits at least correct at the end of each iteration. Use four decimal digit arithmetic to find a solution.

myFunction = @(x) (x/2-(x+1)^(1/3)); % anonymous function declearation

% myFunction = inline('x/2-(x+1)^(1/3)','x'); % we'll use anonymous function if sin(x) or cos(x), etc exists in the equation. 
x_lower = 3;
x_upper = 4;

if myFunction(x_lower)*myFunction(x_upper)<0
    
x_mid = (x_lower + x_upper)/2;
disp (['After iteration 1', ' the root is: ', num2str(x_mid)]);
iter=1;
while iter<=3
    iter = iter+1;
    if myFunction(x_mid)*myFunction(x_upper)<0
    x_lower=x_mid;
else
    x_upper=x_mid;
end
x_mid = (x_lower + x_upper)/2;
disp (['After iteration ', num2str(iter), ' the root is: ', num2str(x_mid)]);
end
else
    disp (['There is no root between ', num2str(x_lower), ' and ', num2str(x_upper)]);
end
    
