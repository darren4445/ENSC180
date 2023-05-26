%############################################################################
% <Lab 9b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calculates piecewise linear interpolation, fifth order
% polynomial, and splin on the 27
% Due date: 2023/03/28
%
% Author: Darren Lai
% Input: Temperature and Oxygen

% Output: ^as the description states
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################

clc
clear all
close all
figure;
hold on

% Tempterature and oxygen values
Temp = [0 8 16 24 32 40];
Oxygen = [14.621 11.843 9.870 8.418 7.305 6.413];

%% Piecewise Linear Interpolation
P1 = interp1(Temp, Oxygen, 27);
scatter(27, P1);
% Print result
fprintf("The piecewise linear interpolation value at 27 is %f\n", P1)


%% Fifth-Order Polynomial
P2 = polyfit(Temp, Oxygen, 5);
pv = polyval(P2, 27);
scatter(27, pv);
% Print result
fprintf("The fifth order polynomial value at 27 is %f\n", pv)

%% Spline
P3 = spline(Temp, Oxygen, 27);
scatter(27,P3);
% Print result
fprintf("The spline value at 27 is %f\n", P3)

% Conclusion
disp("It appears that fifth order and spline are very similar whilst piece-wis interplation is higher")