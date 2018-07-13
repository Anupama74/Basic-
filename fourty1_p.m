-clc
clear
%% given data
Sa=320;
Da=800; %speed and distance of aircraft a
Sb=160;
Db=410;  %speed and distance of aircraft b
Ta = Da/Sa
Tb = Db/Sb    % time for each aircrafts  Ta=2.5 & Tb=2.5625
Tmax=[2:0.001:3];  % thus time is taken between 2 & 3
Xa = [-320,800];  
Xb = [-160,410];    %locations of aircrafts A & B
%% part a solution

D1 = conv(Xa,Xa)+ conv(Xb,Xb)  
D2 = sqrt(polyval(D1,Tmax))  ;   %to find distance between aircrafts
[Distance_min,n] = min(D2) % minimum D value
Tmin = Tmax(n) % Time at which D reached its minimum value
figure(1)
plot(Tmax,D2,Tmin,Distance_min,'*'), xlabel('T(h)'),ylabel('D(mi)'), grid
title('Distance between Aircrafts and minimum D value')

%% part b solution
% given distance
D_given = 30;
D_square = D_given^2;
D_ab30 = (D1 - [0,0,D_square])  %
Time_30= roots(D_ab30);

Time_A = Time_30(1)
Time_B = Time_30(2)




