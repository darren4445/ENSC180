%############################################################################
% <Lab 3>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calculates the array specifications
% Due date: 31/01/2023
%
% Author: Darren Lai
% Input: None
% Output: Array a specifications
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################

a = [3.1 5.8 6.3 2.6 2.1 7.0 5.0 8.2 4.2]

sz = size(a)    %Size of array
[mina , maxa] = bounds( a , 'all')    %Min and max of array
M = median( a , 'all')  %Median of array
m = mean( a , 'all')    %Mean of array
s = std(a)  %standard derivation
asorted = sort(a)   %reorder from min to max value
