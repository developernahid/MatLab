f= @(x) 3*x-cos(x)-1;
lower=0;
upper=1;
step=10;
if f(lower)*f(upper)>0;
  disp(['There is no root between: ',num2str(lower),'and ',num2str(upper)]);
else
  mid=(lower+upper)/2;
  disp(['After iteration 1',' the root is :',num2str(mid)]);
  iter=1;          %Bisection Method
  while iter<step
    iter=iter+1;
    if f(upper)*f(mid)<0;
      lower=mid;
    else
      upper=mid;

    end
    mid=(lower+upper)/2;
    disp(['After iteration',num2str(iter),' the root is: ',num2str(mid)]);
  end
end

