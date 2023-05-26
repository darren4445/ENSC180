%############################################################################
% <Lab 9a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Reads the data and produces 1 to 4th degree polynomial
% Due date: 2023/03/28
%
% Author: Darren Lai
% Input: txt file

% Output: graph with 1 to 4th degree polynomial interpolations
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################

clc
clear all
clf
figure;
hold on

% reads the txt file
Data = readtable("lab9data.txt");
% creates array from table
Data_values = table2array(Data);

% Volume and pressure separated
Volume = Data_values(:,1);
Pressure = Data_values(:,2);

% Produces the scatter plot
scatter(Volume, Pressure);

% Sets the values for newVolume
newVolume = 1:0.2:6;

%% Degrees of polynomial
% First degree
p1 = polyfit(Volume, Pressure, 1);
new_p = polyval(p1,newVolume);
plot(newVolume, new_p);

% Second degree
p2 = polyfit(Volume, Pressure, 2);
new_p = polyval(p2,newVolume);
plot(newVolume, new_p);

% Third degree
p3 = polyfit(Volume, Pressure, 3);
new_p = polyval(p3,newVolume);
plot(newVolume, new_p);

% Fourth degree
p4 = polyfit(Volume, Pressure, 4);
new_p = polyval(p4,newVolume);
plot(newVolume, new_p);

legend("Actual","First degree", "Second degree", "Third degree", "Fourth degree")
title("Pressure by Volume")
ylabel("Pressure")
xlabel("Volume")

% Results
disp("It appears that the higher the degree, the more accurate it is.")
disp("Thus, the fourth order is the best.")