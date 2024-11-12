Func= @(x) 3*x-cos(x)-1;
low=0;
upper=1;

if Func(low)*Func(upper)<0
  mid= (low+upper)/2;
  disp(['After iteration 1 ','root is:',num2str(mid)]);
  iter=1;
  while iter<=10
    iter=iter+1;
    if Func(upper)*Func(mid)<0
      low=mid;
    else
      upper=mid;
    end
     mid= (low+upper)/2;
     disp(['After Iteration ',num2str(iter),' the root is:',num2str(mid)]);
  end
else
  disp(['There is no root between',num2str(low),'and',num2str(upper)]);
 end
