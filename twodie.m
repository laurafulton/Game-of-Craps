function [sum_roll] = twodie
%the variable sum_roll will be returned to the main function
%Each die is rolled
two_roll = randi([1,6], 1,2);

sum_roll = two_roll(1) + two_roll(2)

% %Sum of dice can also be computedin the following way. How to sum was not
% specified. 
% sum_roll =0;
%     for i = 1: length(two_roll)
%         sum_roll = sum_roll + two_roll(i);
%     end
% disp(['sum roll:' num2str(sum_roll)])
    

