clc
clear
b = 0.16;
m = 0.12;  %given constants 

R1 = 30;
v1 = 15;

v2 = linspace(0,10,500);

v1_value = R1*b*(exp(m*v2)-1)+v2;   %Kirchoff's law
v2_line = [0,10];
v1_line=[15,15];
plot(v2,v1_value,v2_line,v1_line,'.'),grid,xlabel('v2'),ylabel('v1')
V_appr = @(V2) R1*b*(exp(m*V2)-1)+V2-v1;
v2_soln = fzero (V_appr,8);
i1_soln = b*(exp(m*v2_soln)-1);
i_1 = i1_soln
volt = v2_soln