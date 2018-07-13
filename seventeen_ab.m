clc
clear

angle_radian = (35*pi)/180;
v=10;
g=9.81;
t= 0.5:0.0001: 2;


%% part a
h_t = v.*t.*sin(angle_radian)-(1./2).*g.*t.^t;
x_t = v.*t.*cos(angle_radian);

max_height = max(h_t)
%max_distance = v*max_time(2)*cos(ang)
h_ground = [(-g/2) (v*sin(angle_radian)) 0];
time_hit = roots (h_ground);
time_hitground = time_hit(2)
max_distance = v*time_hitground*cos(angle_radian)
% max_height =  0.8645
%time_hitground =  0    & 1.1694
%max_distance =   9.5789

%% part b

plot(x_t,subplus(h_t)) , axis ([4,12,-1,1])
grid,xlabel('Distance'),ylabel('Height')
title('Positive values of height')



