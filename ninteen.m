clc
clear
x = -5:0.1:15;
y = ninteen_f1(x);
x_min = fminbnd(@ninteen_f1,-5,15)
y_min = ninteen_f1(x_min)
plot(x,y,x_min,y_min,'*')

%x_min = 5 y_min = -492 plot is attached