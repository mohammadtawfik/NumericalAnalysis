clear all
close all
clc

Weffect=1; Cc=1; Mass=1;

TMax=4; DeltaT=0.2; Nt=TMax/DeltaT;

VofT(1)=0;
TVect(1)=0;
VEuler(1)=VofT(1);
for ii=2:Nt+1;
  Tt=(ii-1)*DeltaT;
  TVect(ii)=Tt;
  VofT(ii)=Weffect/Cc*(1-exp(-Tt*Cc/Mass));
  VEuler(ii)=VEuler(ii-1)+DeltaT*((Weffect-Cc*VEuler(ii-1))/Mass);
end

plot(TVect,VofT,TVect,VEuler)
grid
axis([0,4,0,1])