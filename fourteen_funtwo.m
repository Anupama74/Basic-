function t_dec = time2_decrease (x,r);
global Rd Xd
Xd=x
Rd=r

t_dec = fzero ('fourteen_funone' , 100);
end
 
