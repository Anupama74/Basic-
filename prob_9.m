clc
clear

mu=8.007;
s=0.005;
d1 = 7.99;
d2 = 8.01;
P = (erf((d2-mu)/(s*sqrt(2)))-erf((d1-mu)/(s*sqrt(2))))/2;
percentage = P * 100