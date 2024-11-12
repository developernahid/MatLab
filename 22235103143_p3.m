n = input('Enter a number: ');

function val=factorial_loop(n)
  val=1;
  for i=1:n
  val= val*i;
  end
endfunction
result = factorial_loop(n)
