clc
clear
fun = @(x,y) x.^2*sin(y);
A = dblquad(fun,0,pi,0,4)