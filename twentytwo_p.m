%22nd problem
clc
clear
x=0:0.1:2;
u=2*log10(60*x+1);
v=3*cos(6*x);
plot (x,u,'+',x,v,'.',x,u,x,v) , ylabel('u and v-speed (miles/hour)'), xlabel('x - distance(miles)')
