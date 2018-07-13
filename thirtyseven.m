clc
clear
R = [5,100,200,150,250]*1000;
eq1 = [R(1)+R(4),-R(4),0];
eq2 = [-R(4),R(2)+R(4)+R(5),-R(5)];
eq3 = [0,R(5),-(R(3)+R(5))];
RES = [eq1;eq2;eq3]
%% part a
I = [0;0;0;0;0];
v1 = 100;
v2 = 100;
range = 0 ;
while abs(I) <= [1;1;1;1;1]./1000
vol = [v1;0;v2];
I_123 = RES\vol;
Current = [I_123;I_123(1)-I_123(2);I_123(2)-I_123(3)];
  if abs(Current)<= [1;1;1;1;1]./1000
      range = v2;
  end
  v2=v2-0.01;
  if v2<0
      break
  end
end
v2 = range
voltages = [v1;0;v2]
Current_mA = [I_123;I_123(1)-I_123(2);I_123(2)-I_123(3)]*1000 %in milliamps

