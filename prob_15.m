clc
clear
A = [1,-3;1,5;4,-6];
b = [2;18;10];
%X=rref([A b])
if rank(A) == rank([A b])
size_a = size(A);
if rank(A) == size_a(2)
disp('A unique solution')
X = A\b 
else
disp('augmented matrix of the reduced system')
X= rref([A b]) 
end
else
disp('There are no solutions')
end