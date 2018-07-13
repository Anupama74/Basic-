clc
clear
Vo = 40;
g=9.81;
angle = 30*pi/180;

t_g = 2*(Vo/g)*sin(angle);
t = 0:t_g/200:t_g;
h = Vo*t*sin(angle) - 0.5*g*t.^2;
v = sqrt(Vo^2 - 2*Vo*g*sin(angle)*t + g^2*t.^2);

%% part a
u1 = find(h>15)
a_time1 = t(u1(1))
a_time2 = t(u1(end))   %%0.9990 & 3.0785
%% part b
u2 = find( h>15 & v<=36);
b_time1 = t(u2(1))
b_time2 = t(u2(end))   %% 1.0601 & 3.0173
%% part c
u3 = find(h<5 | v>35);
c_time1 = t(u3(1))
c_time2 = t(u3(end))  %% 0 & 4.0775
