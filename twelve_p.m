%12th problem
clc
clear
P = 2.2;
V1_ft3 = 28500; %volume in cubic foot
T1_c = -15;  %temperature in celcius
R = 0.082057; %Ideal Gas law constant for l atm /mol/k
V1_l = V1_ft3/0.03531466 %formula to convert cubic foot to liters
T1_k = T1_c +273.2 % formula to convert celcius to kelvin

% loading all this values to the law formula,
n = (P*V1_l)/(R*T1_k)
% ans V1_l=8.0703e+05,T1_k=258.2, n=8.3799e+04

%second part, to find new volume by new temperature
T2_c = 31;
T2_k = T2_c + 273.2 %convert celcius to kelvin
V2_l = (n*R*T2_k)/P  %solution will be liters
V2_ft3 = V2_l * 0.03531466 % volume in terms of cubic foot 

% ans T2=304.2 , V2_l= 9.5081e+05 liters , V2_ft3 = 3.3577e+04
