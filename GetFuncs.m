function [F1,F2]=GetFuncs(x,y)
  SQT=sqrt(1-(x-1)*(x-1) - (y-1)*(y-1));
  F1=(1-x)/SQT;
  F2=(1-y)/SQT;
end