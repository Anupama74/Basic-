clc
clear
A=[1,4,2;2,4,100;7,9,7;3,pi,42]
B=log(A)

%a
a=B(2,:)

%b
b= sum(a)

%c
m=B(:,2)
n=A(:,1)
c=m.*n

%d
d= max(c)

%e
x_c=A(1,:)
y_r=B(1:3,3)
y_c=y_r'
e1 = x_c./y_c
e2 = sum(e1)