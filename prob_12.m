clc
clear
% part a
A = [6,2,10;3,5,2];
b = [35;40];
m= rref([A b])
%infinite solution
% part b
% to find allowable range of x,y,z
A1 = [1,0,0;0,1,0];
b1 = [3.9583;5.6250];
X_minz=A1\b1
A2 = [1,0,1.9167;0,1,-0.75];
b2 = [3.9583;5.6250];
X_maxz=A2\b2
%from above, it is clear that for x=0,y=7.1739 => z= 2.0652
% part c
%For maximum profit,consider smallest value, P = 2479.2-58.34Z
Profit_c = 200*X_minz(1)+300*X_minz(2)+100*X_minz(3)
%part d
% for maximum profit,consider maximum value, P = 3604.16+91.66Z
Profit_d = 200*X_maxz(1)+500*X_maxz(2)+100*X_maxz(3)

