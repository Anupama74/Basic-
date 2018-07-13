clc
clear
init_deposit = input ('Enter the initial amount:')
Interest_rate = input ('Enter rate of Interest in %:')
freq_interest = input('Type monthly, quarterly, semiannual, annual:','s')
freq_int = freq_interest;
Formula =(Interest_rate/100)* init_deposit;

switch freq_int
    case 'monthly'
       Final_amount = Formula/12+init_deposit
    case 'quarterly'
        Final_amount = Formula/4+init_deposit
    case 'semiannual'
        Final_amount = Formula/2+init_deposit
    case 'annual'
        Final_amount = Formula+init_deposit
    otherwise
        disp('wrong input is entered')
end

        