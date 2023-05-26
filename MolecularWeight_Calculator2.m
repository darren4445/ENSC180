%############################################################################
% <Lab 7b>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calculates molecular weights of acids in elements.dat
% Due date: 31/01/2023
%
% Author: Darren Lai
% Input:  reads weights.dat
% Output: creates weights.dat
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%#########################################
clc
clear all

%Reads elements.dat
Table2 = readtable('C:\Users\darre\OneDrive\Desktop\SFU\ENSC 180\yes\elements.dat')
%Separates the acid names from the rest
AcidNames = Table2(:,1)
CHONS = Table2(:,2:6)

%List of the molecular weights
MolWeight = [15.9994; 12.011; 14.00674; 32.066; 1.00794]

%Converts number of types of molecules into array
CHONS_array = table2array(CHONS)

%Matrix multiplies the moleule types with molecular weight
Weight = CHONS_array*MolWeight
%Converts the previous into table
Mol_Weighttable = array2table(Weight)

%Creates the new table
Table2_new = [AcidNames Mol_Weighttable]
Table2_new.Properties.VariableNames = ["Amino Acids", "Molecular Weights"]
%Writes the new weights.dat file
writetable(Table2_new, 'weights.dat', 'Delimiter', ' ', 'QuoteStrings', false)