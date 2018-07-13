t = 0:0.001:1;
x_t = (1/3)*t.^3 - t.^2+3.*t-3+3.*exp(-t);
plot(t,x_t),grid,xlabel('t'),ylabel('x')