x0=0.05;
iter = 0;

f = @(x) (x^3)-(0.165*x^2)+(3.993*10^(-4));
fprime = @(x) (3*x^2)-(0.33*x);

while iter <3
    Old=x0;
    iter=iter+1;
    x1 = x0 - f(x0)/fprime(x0);
    x0=x1
    New=x0;
    error=abs(((New-Old)/New)*100)
```
end
