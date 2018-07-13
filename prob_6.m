clc
clear

data = [311,138,340,199,270,255,332,279,231,296,198,269,....
    257,236,313,281,288,225,216,250,259,323,280,205,....
    279,159,276,354,278,221,192,281,204,361,321,282,....
    254,273,334,172,240,327,261,282,208,213,299,318,....
    356,269,355,232,275,234,267,240,331,222,370,226] ;

x = [100:50:400];
[y_abs,x] = hist(data,x);
binwidth = 50;    %binwidth 10 is too smaller
Area = binwidth*sum(y_abs);
Y_scaled = y_abs/Area;
bins = x;
bar(bins,Y_scaled)
xlabel( 'Force in newtons' )
ylabel( 'Scaled Fequency' )
mu = mean(data) 
sigma = std(data)

lower_1 = mu - sigma
lower_2 = mu - 2*sigma
upper_1 = mu + sigma
upper_2 = mu + 2*sigma

%The area under the plot between 200 and 300 newtons.
%therefr 68% prediction

P_68 = (erf((upper_1-mu)/(sigma*sqrt(2)))-erf((lower_1-mu)/(sigma*sqrt(2))))/2;
percentage = P_68 * 100