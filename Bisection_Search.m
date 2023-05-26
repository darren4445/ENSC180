%############################################################################
% <Lab 10a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Using the bisection method to the following function g(x) = x
% Due date: 2023/04/04
%
% Author: Darren Lai
% Input: Graph from interval 1 to 3

% Output: Percent error and error
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################

clc
clear all
close all

% Setting symbolic value
syms g(x)
g(x) = (x.^3)-4;
X = zeros(1,6);
% Allowing extra memory, thus they are 1,6
errors = zeros(1,6);
Percent_error = zeros(1,6);

a = 1;
b = 3;
% Midpoint
c = (a+b)/2;
X(1,1) = c;

% Setting for 3 iterations
for i = 0:3
    if (sign(g(a)) == sign(g(b)))
        a = c;
    else
        b = c;
    end
    c = (a+b)/2;
    X(1,i + 2) = c
    % Calculates error and percent errors
    error(1,i + 1) = abs(c - X(1, i + 1));
    Percent_error(1,i + 1) = abs((c - X(1,i + 1))/c)*100;
end

fprintf( ...
    "x0: Percent error = %0.01f%%, E = %0.03f\n" + ...
    "x1: Percent error = %0.01f%%, E = %0.03f\n" + ...
    "x2: Percent error = %0.01f%%, E = %0.03f\n" + ...
    "x3: Percent error = %0.01f%%, E = %0.03f\n", ...
    Percent_error(1,1), error(1,1), Percent_error(1,2), error(1,2), ...
    Percent_error(1,3), error(1,3), Percent_error(1,4), error(1,4));
