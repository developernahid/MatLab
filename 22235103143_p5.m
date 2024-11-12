n = input('Enter a number: ');

function val=Sum_Number(n)
  val=1;
  for i=1:n
  val= val+i;
  end
endfunction
result = Sum_Number(n);
fprintf("Sum of %f to %f is = %f \n",1,n,result)

fprintf("Multiplication Table \n")
i=1;
while(i:n)
    fprintf('%d*%d=%d \n',n,i,n*i);
    i=i+1;
end
