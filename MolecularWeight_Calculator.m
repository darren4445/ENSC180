%############################################################################
% <Lab 7a>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: User inputs number of O, C, N, an H in amino acid
% Due date: 31/01/2023
%
% Author: Darren Lai
% Input:  User inputs number of O, C, N, H, and S in amino acid
% Output: calculates molecular weightof amino acid
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
clc
clear all

%User inputs the number of molecules for each type
C = input('Number of Carbon:')
H = input('Number of Hydrogen:')
O = input('Number of Oxygen:')
N = input('Number of Nitrogen:')
S = input('Number of Sulfur:')
User_input = [C; H; O; N; S]

%Molecular weight
Weight = [12.011; 1.00794; 15.9994; 14.00674; 32.066]
Mol_Weight = dot(User_input, Weight)

%Prints the molecular weights of user input elements
fprintf("The molecular weight is %f", Mol_Weight)