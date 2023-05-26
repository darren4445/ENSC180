%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calulates the sum of the two sin
% Due date: Feb 14 2023
%
% Author: Darren Lai
% Input: Two sinusoidals
% Output: Plot of the sum
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
clc
clear

%Defining A1, A2, phi1, phi2
A1 = 5;
A2 = 7;
phi1 = 25;
phi2 = 42;
%Calling the function of PhasorAdd
PhasorAdd(A1,phi1,A2,phi2)

%Function of PhasorAdd using A3 and phi3
[A3,phi3] = PhasorAdd(6,60,8,-30)

%Dimensions for plot
t = 0:0.0001:0.02;
V3 = A3*cos(200*pi*t + phi3);

%Plot of the sin
plot(t,V3)
title('Two sinusoidal addition')
xlabel('t')
ylabel('V3')





