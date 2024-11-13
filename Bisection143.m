%Declare function
F= @(x) 3*x-cos(x)-1;
l=0;
m=1;
if F(l)*F(m)>0
   disp (['There is no root between ', num2str(l), ' and ', num2str(m)]);
else
  mid= (l+m)/2;
  disp(['After iteration 1 the root is = ',num2str(mid)]);
  iter=1;
  while iter<10
    iter=iter+1;
    if F(mid)*F(l)<0
      m=mid;
  else
    l=mid;
  end
  mid= (l+m)/2;
 disp (['After iteration ', num2str(iter), ' the root is= ', num2str(mid)]);
 end
end
