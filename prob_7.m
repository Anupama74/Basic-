clc
clear
t = 0:10;
q = [0,80,130,150,150,160,165,170,160,140,120];
h = trapz(t,q) ;  % relation b\n flowrate & height and area....
A = 100;    %  A.d(h)/dt = q
disp('the water height at 10min is ft')
h_t = h/A