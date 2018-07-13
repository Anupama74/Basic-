clc
clear
syms x(t) y(t)
A= [-6 4;5 -7];
B = [0;3*t];
Y = [x;y];
odes = diff(Y) == A*Y + B
C = Y(0) == [0;0];
[xSol(t), ySol(t)] = dsolve(odes,C);
t = 0:0.001:2;
plot(t,xSol(t))
hold on 
plot(t,ySol(t)),grid,xlabel('t'),ylabel('X,Y solution')
title('to compare with simulink graph')