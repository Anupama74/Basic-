%25th problem
clc
clear
W=6; % Width of rectangle
A=80; % Area of rectangle
L=A/W % Length of rectangle from the area of rectangle

% To determine total length of fence 
% According to pythagorean theorem for right angeled triangle, a=b=D & c=W
D = W/sqrt(2)
TotalLength = W+(2*D)+(2*L)
% total length of fence required is 41.1519m