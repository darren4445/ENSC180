%############################################################################
% <Lab 3>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Population vs years between 1790 and 2020 of USA
% Due date: < 31/01/2023
%
% Author: Darren Lai
% Input: None
% Output: population vs year
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
e=exp(1)

t = linspace(1790, 2020, 230);
p = 197273000./(1 + e.^(-0.03134*(t - 1913.25)));
plot(t,p)

hold on

t_data = 1790:10:2020;
Populations = [3929214, ...
    5308483, ...
    7239881, ...
    9638453, ...
    12866020, ...
    17069453, ...
    23191876, ...
    31443321, ...
    38558371, ...
    50189209, ...
    62979766, ...
    76212168, ...
    92228496, ...
    106021537, ...
    123202624, ...
    132164569, ...
    151325798, ...
    179323175, ...
    203211926, ...
    226545805, ...
    248709873, ...
    281421906, ...
    308745538, ...
    331449281];

scatter(t_data,Populations)
 
title('US population between 1790 to 2020 vs Projected')
legend('Real', 'Projected')

xlabel('Year')
ylabel('Population')
axis tight

%This script compares the real data of the US population and the projected
%data of the population between the years 1790 to 2020

