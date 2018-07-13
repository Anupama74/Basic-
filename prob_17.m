clc
clear
t = [0,3.15,6.20,10.0,18.3,30.8,43.8];
c = [0.1039,0.0896,0.0776,0.0639,0.0353,0.0207,0.0101];
c_fo = log(c);    % since first order 

c_values = polyfit(t,c_fo,1)
k = c_values(1)
c_0 = c_values(2)

t_fit = linspace(0,0.1,50);
c_t = c_0 .* exp(-k.*t_fit);

plot(t,c_fo,'o',t,c_fo,t_fit,c_t,'*'),grid
xlabel('time t(h)'), ylabel('Chemical concentration'),title('Curve fit')