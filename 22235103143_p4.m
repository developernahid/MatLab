a = input('Enter number-1: ');
b = input('Enter number-2: ');
c = input('Enter number-3: ');


function large= Large_Num(a,b,c)
  if (a>b) && (a>c);
    fprintf("%f is greater",a)
    end
  if (b>a) && (b>c)
    fprintf("%f is greater",b)
    end
  if(c>a) && (c>b)
    fprintf("%f is greater\n",c)
    end
endfunction
result= Large_Num(a,b,c)
