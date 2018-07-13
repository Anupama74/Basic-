clc
clear
rand('state',sum(100*clock));
x = randperm(15);
number = x(1);
k=0;
status = 0;
disp('attempts given is 14, guess a number from 1 to 15')
while(k<14)&(status==0)
    k=k+1;
    Turn = k
Guess = input( 'Enter your Guess (1 - 15): ' ) 
diff = abs(Guess-number); 

if diff == 0 
    disp( 'You won!!! :) :D' ) 
    status = 1; 
 elseif diff > 3 
    disp( 'Not close :(' ) 
    status = 0; 
 else
    status = 0;
    if (diff == 2)|(diff == 3) 
        disp( 'Getting close :-]' ) 
    else
        disp( 'Very close *-*' )
    end
end
end
if k >= 14 
    disp( 'You have no more guesses left :(' ) 
else
    disp( 'The number of guesses you took:' )
    disp(k) 
end

