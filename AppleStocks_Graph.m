%############################################################################
% <Lab 4>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Apple Data vs Time graphs
% Due date: Feb 7, 2023
%
% Author: Darren Lai
% Input: Appl data csv
% Output: Graphs from data plus average into csv
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
clc
clear all
close all

Apple = readtable("AAPL.csv")   %Reads excel table

%High vs Date
figure;
x = Apple.Date; %Sets the x value
y = Apple.High; %Sets the y value
plot(x,y)   %Plot x and y
title('High vs Date')   %Title
ylabel('High')  %Y label
xlabel('Time')  %X label

%Low vs Date
figure;
x = Apple.Date;
y = Apple.Low;
plot(x,y)
title('Low vs Date')
ylabel('Low')
xlabel('Time')

%Close vs Date
figure;
x = Apple.Date;
y = Apple.Close;
plot(x,y)
title('Close vs Date')
ylabel('Close')
xlabel('Time')

%Volume vs Date
figure;
x = Apple.Date;
y = Apple.Volume;
plot(x,y)
title('Volume vs Date')
ylabel('Volume')
xlabel('Time')

avg = (Apple.Open + Apple.Close)/2  %Average calculations
Apple.Average = avg      %Average column added

%writetable(Apple, 'APPL-new.csv')   %Makes csv file

clear