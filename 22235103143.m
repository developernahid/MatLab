n=input("Enter true value:");
m=input("Enter aprroximate value:");
val=n-m;

fprintf("True error: %d\n",val);

val2= val/n;
fprintf("Relative true error: %d\n",val2);

o=input("Present approximation value:");
p=input("Previous approximation value:");

val3=o-p;
fprintf("Present Approximate error: %d\n",val3);

val4=val3/o;
fprintf("Relative Approximate error: %d\n",val4);

val5= abs(val4)*100;
fprintf("Absolute Relative Approximate error: %d\n",val5);
 if val5>5
        fprintf('There is no significant digit is correct')
    elseif val5<5 && val5>0.5
        fprintf('There is at least 1 significant digit is correct')
    elseif val5<0.5 && val5>0.05
        fprintf('There is at least 2 significant digit is correct')
    else
        fprintf('There is at least 2 significant digit is correct')
end

