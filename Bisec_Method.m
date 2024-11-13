Func= @(x) 3*x-cos(x)-1;
low=0;
upp=1;

if Func(low)*Func(upp)<0
  %code
  mid=(low+upp)/2;
  disp(['After iteration 1 the root is= ',num2str(mid)]);
  i=1;
  while i<10
  i=i+1;
  if Func(mid)*Func(upp)<0;
    low=mid;
  else
    upp=mid;
  end
  mid=(low+upp)/2;
  disp(['After iteration ',num2str(i),' the root is= ',num2str(mid)]);
  end
else
  disp(['There is no root']);
end
