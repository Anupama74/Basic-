clc
clear
x1 = [1 2 3 4 1 2 3 4 1 2 3 4]';
x2 = [1 1 1 1 2 2 2 2 3 3 3 3]';
y = [40 51 65 72 38 46 53 67 31 39 48 56]';
X = [x1.^0 x1 x2];
A = regress(y,X)  % or a = X\y;
Y = X*A;
max_percentageError = 100*max(abs((Y-y)./y))