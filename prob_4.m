clc
clear
t = 0:1.2;
i_t = 0.2*[1+sin(0.2)*t];
c = 1e-7;
v = trapz(t,i_t);      %Q0 = 0 since v(0)=0
V_t = v/c 
