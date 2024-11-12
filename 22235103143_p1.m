A=[1 2 3;
   4 5 6;
   7 8 9]
%Find row 2 & Col 3 value A(2,3) means 6
A(2,3)
%Set A(1,2) value =10
A(1,2)=10;
%Again print matrix A
A
column_sum = sum(A(:,3));
%Calculate the sum of column 3 means 3+6+9=18.00
fprintf("Sum= %f",column_sum)
