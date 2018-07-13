 clc
 clear

 s=[1210 1866 2301 2564 2724 2881 2879 2915 3010]; 
 t=[1 2 3 4 5 6 7 8 10];
 p=polyfit(t,log(s),1)
 s_1=p(1)
 s_2=exp(p(2))
 ti=1:0.1:10;
 si=s_2-(s_2*exp(s_1*ti));
 plot(t,s,ti,si,'.')
 xlabel('Time(sec)');
 ylabel('Speed(rpm)');