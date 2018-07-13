clc
clear
[t,x] = ode45(@fun31,[0,2],[0,0]);
[t1,x1] = ode45(@fun31b,[0,2],[0,10]);
figure(1),plot(t,x(:,1)),xlabel('t')
ylabel('y'),title('initial velocity')
figure(2),plot(t1,x1(:,1)),xlabel('t1')
ylabel('y1'),title('nonzero init velocity')