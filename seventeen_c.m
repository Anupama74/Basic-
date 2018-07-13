% part c
clc
clear


angle_radian = [20 30 45 60 70]*pi/180;
v=10;
g=9.81;
t= 0.5:0.5: 2.5;   %taken from part a

h_t = v.*t.*sin(angle_radian)-(1./2).*g.*t.^t;
x_t = v.*t.*cos(angle_radian);

plot(x_t,subplus(h_t),'*',x_t,subplus(h_t)) ,axis ([4,12,-1,2])
grid,xlabel('Distance'),ylabel('Height')
title('For given five angles')