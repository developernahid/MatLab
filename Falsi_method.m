Fun= @(x) x*x*x-18;
a=1;
b=3;
e=0.0005;
fa= Fun(a);
fb= Fun(b);
if fa*fb>0
  fprintf("No root");
else
  c= (a*Fun(b)-b*Fun(a))/(Fun(b)-Fun(a));
  fc= Fun(c);
  while abs(fc)>e
    if fa*fc<0;
    b=c;
    fb= Fun(b);
  else
    a=c;
    fa=Fun(a);
  end
  c= (a*Fun(b)-b*Fun(a))/(Fun(b)-Fun(a));
  fc= Fun(c);
end
fprintf("The root is= %f",c);
 end
