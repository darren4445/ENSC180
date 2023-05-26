%############################################################################

% <Final Exam>

%

% Course: ENSC 180 Introduction to Engineering Analysis% Instructor: Dr. Herbert H. Tsang

% Description: <Give a brief description for homework 1>

% Due date: April 20 2023

%

% Author: Darren Lai

% Input: altitude, velocity, acceleration

% Output: graphs

% I pledge that I have completed the programming assignment independently.

% I have not copied the code from a student or any source.% I have not given my code to any student.

%  

%   Sign here: Darren Lai

%###################################################
clc
clear all

% Read table
data = readtable("altitude.dat")

% Conver into array
time = table2array(data(:,1))
altitude = table2array(data(:,2))

subplot(3,1,1)
% Plotting altitude using linear interpolation at 3.6 seconds
int_altitude = interp1(time, altitude, 3.6, "linear")
plot(3.6, int_altitude, 'o')
hold on
% NOTE: the following two lines are to establish a graph so the viewer can
% see the linear interpolation of the previous 2 lines of code in a scaled
% manner.
int_altitude = interp1(time, altitude, time, "linear")
plot(time, int_altitude, '--')
title("Altitude using linear interpolation")
legend(" Altitude at 3.6 seconds", "Altitude")
xlabel("Time")
ylabel("Altitude")

subplot(3,1,2)
% Plotting the velocity at each time step against time
velocity = diff(altitude, 1)
plot(time(1:size(time,1)-1), velocity)
title("Velocity")
legend("Velocity")
xlabel("Time")
ylabel("Velocity")

subplot(3,1,3)
% Plotting the acceleration at each time step against time
acceleration = diff(altitude, 2)
plot(time(1:size(time,1)-2), acceleration)
title("Acceleration")
legend("Acceleration")
xlabel("Time")
ylabel("Acceleration")

% Display findings
disp("I believe the staging time is around time 7,16, and 22 seconds as that is where there is a boost in velocity as well as notible changes in position and acceleration.")
