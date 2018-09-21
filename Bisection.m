%A simple program that demonstrates the 
% application of the Bisection method.
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
%https://sites.google.com/academyofknowledge.org/theakweb/engineering-and-science/applied-numerical-analysis
%
%*******************************************


%Clearing the memory
clear all
close all
clc

%Defining the bracket of search
x1=-1;
x2=5;
%Evaluating the function 
% at the boundaries of the bracket
F1=exp(-x1)-0.5;
F2=exp(-x2)-0.5;

%Problem parameters
Epsilon = 1e-3; %Tolerance
MaxIter =20;      %Maximum number of iterations

%Initializing the counter and error 
Counter=0;
Err=1000;
x3old=x1;
%The search loop
while true 
  Counter=Counter+1; %Incrementing the counter
  x3=0.5*(x1+x2); %Evaluating the solution
  F3=exp(-x3)-0.5;%Evaluating the function
  %Evaluating the relative error 
  if x3!=0
    Err=abs((x3-x3old)/x3);
  else
    Err=abs(x2-x1);
  end
  %Checking for termination
  if or(F3==0,or(Err<Epsilon,Counter>MaxIter))
    break
  else
    if (F1*F3)<0 %If they have opposite signs
      F2=F3;
      x2=x3;
    else
      F1=F3;
      x1=x3;
    end
    x3old=x3;
  end
end
%Displaying the solution 
Counter
Err
x3
F3
