%############################################################################
% <Lab 8>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calculates the probability of success based on number of
% succcessful trials
% Due date: 
%
% Author: Darren Lai
% Input: Number of trials
% Output: Successful trials and probability of success
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here: Darren Lai
%############################################################################
clc
clear all

% User inputs how many trials they want to simulate
Trials = input("How many rounds would you like to simulate?");
fprintf("Number of trials is %f\n", Trials)

% Sets the length and width of the walkway
Length = 60;
Width = 20;

% Base for successful trials BEFORE the simulations
Success = 0;

% For loop generating the number of trials requested of the user
for n = 1:1:Trials
    % Starting position
    Posx = 10;
    Posy = 0;
    

    while(Posx >= 0 && Posx <= Width)
       
        Value = rand(1);

        % Front
        if(Value <= 0.6)
            Posy = Posy + 1;

        % Left
        elseif(Value <= 0.9)
            Posx = Posx + 1;

        % Right
        else
            Posx = Posx - 1;
        end
        
        % Reaches end of walkway
        if Posy >= Length
            Success = Success + 1;
            break
        end
    end
end
fprintf("Number of successful trials is %f\n", Success)

% Calulates the successful trails
Prob = Success/Trials;
fprintf("The probability of reaching the end of the walkway is %f", Prob)