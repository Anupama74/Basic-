clc
clear
%% part a
A_1 = [-2,1;-2,1];
b_1=[-5;3];
x_1 = pinv(A_1)*b_1

%% part b
A_2 = [-2,1;-8,4];
b_2 = [3;12];
x_2 = pinv(A_2)*b_2

%% part c
A_3 = [-2,1;-2,1];
b_3 = [-5;-5.00001];
%x_3 = pinv(A_3)*b_3
x_3 = rref([A_3,b_3])

%% part d
a = [1,5,-1,6;2,-1,1,-2;-1,4,-1,3;3,-7,-2,1];
b = [19;7;30;-75];
%  X_inv = inv(a)*b
%  X_ld = a\b
%  X_ref = rref([a,b])

if rank(a) == rank([a b])
size_a = size(a);
if rank(a) == size_a(2)
disp('There is a unique solution, which is:')
X = a\b % Solve using left division.
else
disp('There is an infinite number of solutions.')
X = rref([a b]) % Compute the augmented matrix.
end
else
% The ranks of A and [A b] are not equal.
disp('There are no solutions.')
end
