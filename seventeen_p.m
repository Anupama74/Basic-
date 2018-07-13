%17th problem
clc
clear
M1 = 5.6; %1st magnitude
M2 = 7.6;  % 2nd magnitude
E1 = (10^4.4)*(10^(1.5*M1)) %energy released by M1
E2 = (10^4.4)*(10^(1.5*M2))  % energy released by M2
DifferentialEnergy = E2/E1   % more energy release by quake M2 than M1 in joules

% ans DifferentialEnergy = 1.0000e+03 = 10^3 = 1K joules

% therefore 1kilo joules of energy is released more from 7.6 M to 5.6 M