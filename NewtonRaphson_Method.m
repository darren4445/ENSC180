%############################################################################
% <Lab 10b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Uses Newton-Raphson method to evaluate known real root at x
% = 3, with initial guess x0 = 3.2 and 3 iterations.
% Due date: 2023/04/04
%
% Author: Darren Lai
% Input: function given as well as initial guess and iteraton amount

% Output: graph, minimum of iterations, result
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################

clc
clear all
close all
figure


x0 = 3.2;

% Setting undefined list
list = [];
% 3 iterations
for i = 1:4
   % Function being used in this case
   f0 = tanh(x0^2 - 9);
   % Derivative of the function
   df0 = 2*x0*(sech(x0^2 - 9))^2;

   % Newton-Raphson method
   x0 = x0 - (f0/df0)
    
   % Shows the results
   fprintf("x%i = %f\n", i, x0)
   % Adds to list
   list(end + 1) = x0;
end


min_value = min(list);
% Prints the minimum value of the iterations
fprintf("Minimum of iterations is %f\n", min_value)

plot(1:4, list)
title("Newton-Raphson Method")

disp("The Newton-Raphson method diverges")

