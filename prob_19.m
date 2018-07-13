clc
clear
t = [5,10,15,20,25,30,35,40,45];
c = [0.3575,0.3010,0.2505,0.2095,0.1800,0.1500,0.1245,0.1070,0.0865];

p1 = polyfit(t,c,1);
p2 = polyfit(t,c,2);
p3 = polyfit(t,c,3);
p4 = polyfit(t,log10(c),1);
%%%%%
res1 = polyval(p1,t)-c;
res2 = polyval(p2,t)-c;
res3 = polyval(p3,t)-c;
res4 = polyval(p4,t)-c;

subplot(2,2,1),plot(t,res1,'o',t,res1),grid,xlabel('linear')
subplot(2,2,2),plot(t,res2,'o',t,res2),grid,xlabel('quadratic')
subplot(2,2,3),plot(t,res3,'o',t,res3),grid,xlabel('cubic')
subplot(2,2,4),plot(t,res4,'o',t,res4),grid,xlabel('exponential')

%%  from Residuals plot,it is clear that given data fits for....
%%%% ... for cubical fit
c_3 = 1./(2*c.^2); %for third order regression
%  Xform the line ==> 1/2ct^2 = y, t=x, k=m, 1/2co2=b.....
c_values = polyfit(t,c_3,3)
k = c_values(1)+c_values(2)+c_values(3)
c_0 = 1/(2*(c_values(4))^2)

t_fit = linspace(5,0.001,50);
c_fit = sqrt(1./((1/(c_0)^2)+2*k.*t_fit));

hold on
figure,plot(t,c_3,'o',t,c_3),grid
xlabel('time t(h)'), ylabel('Chemical concentration')
title('Curve fit for regression')











