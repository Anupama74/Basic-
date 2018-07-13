clc
clear
g1=9.81;
g = g1/2;
vo= -50; % considered negative to solve as quadratic euqtion
h=100;
t = tenfunction (g,vo,h)
%answer for time = 2.7324 & 7.4612

%% interpretation of both t1 & t2 answers
%for the first root value:t1= 2.7324, the height will be 
t1=2.7324;
Vo = 50;
h1 = (Vo*t1-(g1*t1*t1)/2)
% for the second root value:t2 = 7.4612, the height will be
t2=7.4612;
h2 = (Vo*t2-(g1*t2*t2)/2)
