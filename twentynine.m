r = 0.5;
v1 = 5;
w1 = (v1/r);
w2 = 120/57.2957;
t = 0: 0.00001 : 0.2;
a_distance = (w1+w2) .* t;

x = (0.5+5*t).*sin(2*pi*t/3).*cos(4*pi*t);
y = (0.5+5*t).*sin(2*pi*t/3).*sin(4*pi*t);
z = (0.5+5*t).*cos(2*pi*t/3);
d_x = a_distance .* x;
d_y = a_distance .* y;
d_z = a_distance .* z;
plot3(d_x,d_y,d_z,'.'),grid
path_coveredinmeters = max(a_distance)