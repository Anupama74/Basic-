clc
clear
t = 0:0.1:15;
tou = 0:0.07:10.5;
z_t = exp(-t/tou).*sin(2.*t);
[X,Y] = meshgrid (t,tou);
[Z]= meshgrid (z_t);
subplot(2,1,1),mesh(X,Y,Z),xlabel('x=t'),ylabel('y=tou'),zlabel('z_t')
subplot(2,1,2),contour(X,Y,Z),xlabel('x=t'),ylabel('y=tou'),zlabel('z_t')