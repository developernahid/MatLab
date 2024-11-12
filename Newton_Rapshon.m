func=@(x) (x^3)-(0.165*x^2)+(3.993*10^(-4));
fprime= @(x) (3*x^2)-(0.33*x);
x0=0.05;
iter=0;

while iter<3
  old=x0;
  iter=iter+1;
  x1= x0-(func(x0)/fprime(x0));
  x0=x1;
  new=x0;
  error=abs(((new-old)/new)*100)
  if error>5
    disp('No Significant digit is correct');
  elseif error<5 && error>0.5
    disp('1 Digit');
  elseif error<0.5 && error>0.05
    disp('2 Digit');
  else
    disp('At least 2 Digit or more');
    end
  end
