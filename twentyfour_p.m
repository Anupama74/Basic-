clc
clear
W=400;  %given load
Lb=3;   %beam of length
Lc=5;   %Cabel of length

%% part a
D = [0:0.01:Lb]; %Distance that can consider for minimum and maximum values
T1 = (Lb.*Lc.*W)./ (D.*sqrt(Lb.^2-D.^2));   %Tension force values
[T,n] = min (T1);
minT = T    %minimum tension value 
minD = D(n)     % value of D that minimized T

%% part b
%%
T_increase = 1.1*min(T)  %T increased by 10% above the minimum value
n_all=find(T1 < T_increase);
%D is varied in both orders,i.e., increased and decreased by the result of 
% 10% increased T.
D_decreased = D(n_all(1))  % Decreased D value = 1.63m

D_decreasedprctg=100*(D_decreased - minD)/minD' % in percentage

D_long = linspace(minD,2.9,500);
T_long = (Lb.*Lc.*W)./ (D_long.*sqrt(Lb.^2-D_long.^2));
n_long = find(T_long >= T_increase);
D_increased = D_long(n_long(1)) %increased D value = 2.52m

D_increasedprctg = 100*(D_increased - minD)/minD'  %in percentage

%% ploting all the values Minimum value of T & D, increased T line 
%      and respective D values
D_plot = [1.2:0.0001:2.8];
T_plot= (Lb.*Lc.*W)./ (D_plot.*sqrt(Lb.^2-D_plot.^2));
figure(1);
plot(D_plot,T_plot,[D_decreased,D_increased],[T_increase,T_increase],'-',minD,minT,'+','linewidth',1.5),grid
xlabel('D(m)'); ylabel('T(N)');title('plot T v/s D with varying D values');
gtext({'minT, minD';'increased_T';'Decreased_D';'Increased_D'})
% saved picture of graph is attached 

%% Plot of Overall Sensitivity
D_sens = [0.05:0.0002:2.95];
T_sens = (Lb.*Lc.*W)./ (D_sens.*sqrt(Lb.^2-D_sens.^2));
figure(2);
plot(D_sens,T_sens,'linewidth',1.5),grid
xlabel('D(m)'); ylabel('T(N)');title('overall sensitivity plot T v/s D');
%saved picture of graph is attached