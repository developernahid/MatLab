A = [1 2 3; 4 5 6; 7 8 9]
A(2,:)
A(3,3)
A(:,2:3)

B= A([1,3],[1,2])

C= A([3,2,1],:)

A'

#Stuff you want MATLAB to ignore...


A(3,:)=[]

size(A)
