clc
clear
rc=0.2;
[t,v0] = ode45(@fun42,[0,0.4],0);

plot(t,v0,'o',t,v0),grid,xlabel('time'),ylabel('voltage response')