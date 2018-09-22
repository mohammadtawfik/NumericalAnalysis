%A simple program that demonstrates the 
% application of the Modified Newton method.
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


x1=-1; %Initial guess

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
  F1=exp(-x1)-0.5
  %Evaluating the DeltaX
  if x1==0
    DeltaX=0.01;
  else
    DeltaX=0.01*x1;
  end 
  %Evaluating the function at (x+DeltaX)
  F1d=exp(-x1-DeltaX)-0.5;
  %Evaluating the approximate slope
  F1p=(F1d-F1)/DeltaX;

  x2=x1-(F1/F1p)     %The approximate solution

  %Evaluating the relative error 
  if x2!=0
    Err=abs((x2-x1)/x2);
  else
    Err=abs(x2-x1);
  end
  %Checking for termination
  if or(F1==0,or(Err<Epsilon,Counter>MaxIter))
    F1=exp(-x2)-0.5;
    break
  else
    x1=x2;
  end
end
%Displaying the solution 
Counter
Err
x2
F1
