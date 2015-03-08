function [repeat, blank, rolling] = bet_amount(repeat, blank, rolling )

while repeat ==1
    repeat = menu('What would you like to do?' , 'Roll dice',  'End');
    
    while repeat ==1
        money= 0;
        while money == 0
            %asking how much money to bet
            money = input('How much money would you like to bet? $');
            %checking if money bet is valid
            if rolling +1 >= money && money >0 
                game_result =0;
                while game_result ==0
                [sum_roll] = twodie; %calls function to return the sum of roll of two dice

                    if sum_roll == 7 || sum_roll == 11  
                       game_result = 1;
                       disp('YOU WIN')
                       blank(1) = blank(1,1) +1;
                       rolling = rolling + money;

                    elseif sum_roll == 2 || sum_roll == 3 || sum_roll == 12
                       game_result = 2;
                       disp('SORRY, YOU LOSE')
                       blank(2) = blank(1,2) +1;
                       rolling = rolling - money;
                    else 
                       game_result = 0;
                       
                    end
                     %Variables to be used in display
                
                  [win, lose] = bet_result(blank, rolling);   
%                 win= blank(1,1);
%                 lose=blank(1,2);
%                 %display times won, lost, or roll again
%                 disp(['You won ', num2str(win), ' times. You lost ', num2str(lose), ' times.' ])
%                 disp(['You have $',num2str(rolling)])
%                 end
                
                 
        else
        disp('Re-enter money to wager. Try again Please.')
        end
    end
            
    repeat = menu('What would you like to do?' , 'Roll dice',  'End');
        
    end
    if repeat == 2
        disp('Thank you for playing')
    end
    
end
end



          
    


