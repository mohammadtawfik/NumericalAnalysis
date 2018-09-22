%A simple program that demonstrates the 
% application of the Secant method.
%*******************************************
%Created by: Mohammad Tawfik
%Email: mohammad.tawfik@gmail.com
%
%Code associated with lecture notes titled:
%Fundamentals of Numerical Analysis
%Published on ResearchGate.net at:
%https://www.researchgate.net/publication/321850359_Fundamentals_of_Numerical_Analysis_Book_Draft
%With DOI: 10.13140/RG.2.2.25680.81925
%Lecture videos are published on the 
%#AcademyOfKnowledge website 
%http://AcademyOfKnowledge.org
%
%With the direct link: 
% https://sites.google.com/academyofknowledge.org/theakweb/engineering-and-science/applied-numerical-analysis
%
%*******************************************


%Clearing the memory
clear all
close all
clc


x1=-1; %Initial guesses
x2=-0.9;
F1=exp(-x1)-0.5;

%Problem parameters
Epsilon = 1e-3; %Tolerance
MaxIter =20;      %Maximum number of iterations

%Initializing the counter and error 
Counter=0;
Err=1000;
%The search loop
while true 
  Counter=Counter+1;  %Incrementing the counter
  %Evaluating the function 
  % and its derivative at the new solution
  F2=exp(-x2)-0.5;

  x3=x1-(F1*(x2-x1)/(F2-F1))     %The approximate solution

  %Evaluating the relative error 
  if x3!=0
    Err=abs((x3-x1)/x3);
  else
    Err=abs(x3-x1);
  end
  F1=F2;
  x1=x2;
  x2=x3;
  %Checking for termination
  if or(F1==0,or(Err<Epsilon,Counter>MaxIter))
    break
  end
end
%Displaying the solution 
Counter
Err
x2
F1
