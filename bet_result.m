function [win, lose] = bet_result(blank, rolling);  
       win= blank(1,1);
       lose=blank(1,2);
       %display times won, lost, or roll again
       disp(['You won ', num2str(win), ' times. You lost ', num2str(lose), ' times.' ])
       disp(['You have $',num2str(rolling)])
               