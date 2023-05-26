%############################################################################
% <Lab 2>
%
% Course: ENSC 180 Introduction to Engineering Analysis
% Instructor: Dr. Herbert H. Tsang
% Description: Calculates the grade for 5 assignments with weight depending
% on fruit choice
% Due date: 01/24/2023
%
% Author: Darren Lai
% Input: different grades per assignment inputed via the user and user's
% favourite fruit
% Output: grade average depending on user's favourite fruit
% I pledge that I have completed the programming assignment independently.
% I have not copied the code from a student or any source.
% I have not given my code to any student.
%
% Sign here:Darren Lai
%############################################################################


a1 = input("Homework 1 grade is:\n") %The following 5 lines ask for grades of the 5 homework
a2 = input("Homework 2 grade is:\n")
a3 = input("Homework 3 grade is:\n")
a4 = input("Homework 4 grade is:\n")
a5 = input("Homework 5 grade is:\n")

while true
    answer = lower(input("What fruit do you like; apple, orange, or banana?\n",'s')); %Favourite fruit input

    if answer == "apple" %If apple then weight is this
        a1_g = a1*0.1;
        a2_g = a2*0.25;
        a3_g = a3*0.2;
        a4_g = a4*0.2;
        a5_g = a5*0.25;
        GradeFinal = a1_g + a2_g + a3_g + a4_g + a5_g;

    elseif answer == "orange" %If orange then weight is this
        a1_g = a1*0.05;
        a2_g = a2*0.30;
        a3_g = a3*0.1;
        a4_g = a4*0.2;
        a5_g = a5*0.35;
        GradeFinal = a1_g + a2_g + a3_g + a4_g + a5_g;

    elseif answer == "banana" %If banana then weight is this
        a1_g = a1*0.2;
        a2_g = a2*0.15;
        a3_g = a3*0.25;
        a4_g = a4*0.2;
        a5_g = a5*0.2;
        GradeFinal = a1_g + a2_g + a3_g + a4_g + a5_g;
    else
        return
    end
end

final_grade = ceil(GradeFinal);

switch true %Calculates average grades
    case any(final_grade==95:100)
        fprintf("A+")
    case any(final_grade==85:94)
        fprintf("A")
    case any(final_grade==80:84)
        fprintf("A-")
    case any(final_grade==77:79)
        fprintf("B+")
    case any(final_grade==73:76)
        fprintf("B")
    case any(final_grade==70:72)
        fprintf("B-")
    case any(final_grade==67:69)
        fprintf("C+")
    case any(final_grade==63:66)
        fprintf("C")
    case any(final_grade==60:62)
        fprintf("C-")
    case any(final_grade==57:59)
        fprintf("D+")
    case any(final_grade==53:56)
        fprintf("D")
    case any(final_grade==50:52)
        fprintf("D-")
    case any(final_grade==0:49)
        fprintf("F")
end


