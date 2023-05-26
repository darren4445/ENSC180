%############################################################################
% <Lab 5>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: input two numbers and get the magnitutde and phase
% Due date: Feb 14 2023
%
% Author: Darren Lai
% Input: complex numbers
% Output: magnitude and phase angle
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
clc
clear

x = input('Enter the real part of a commplex number:');   %x
y = input('Enter the imaginary part of a complex number:'); %y

%Creates the magnitude value
polar = x + y*i;
polar_val = abs(polar);

%Creates the phase value
phase = angle(polar)*(180/pi)


%Prints the result as well as show the real and imaginary of values x and y
fprintf('The magnitutde and phase of %f + %fi is\n', real(polar), imag(polar))
fprintf('Magnitude = %.4f ', polar_val)
fprintf('Phase angle = %.4f degrees', phase)