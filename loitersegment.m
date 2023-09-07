%{
Loiter % For Loiter use Endurance Equation       (E=(1/C)(L/D)ln(Wi-1/wi))
(Wi/Wi-1)=exp(-E*C/(L/D))
(L/D)loiter=0.866(L/D)max % for Propeller a/c
C(TSFC)loiter=  Piston propfixed=0.085 ,Piston prop variable=0.085 ,Turboprop=0.101 %mg/W-s
%}
%data

% loiter near water source without payload
% loiter 1
V1=50;
LDmax1=14;
LDloiter1=0.866*LDmax1;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C1=1.013e-4;
E1=30; %seconds
WiWi1loiter1=exp(-E1*C1/(LDloiter1))

% loiter near fire area with payload
%loiter 2
V2=50;
LDmax2=14;
LDloiter2=0.866*LDmax2;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C2=1.013e-4;
E2=1800; %seconds
WiWi1loiter2=exp(-E2*C2/(LDloiter2))

% loiter near water source without payload
%loiter 3
V3=50;
LDmax3=14;
LDloiter3=0.866*LDmax3;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C3=1.013e-4;
E3=30; %seconds
WiWi1loiter3=exp(-E3*C3/(LDloiter3))

% loiter near fire area with payload
%loiter 4
V4=50;
LDmax4=14;
LDloiter4=0.866*LDmax4;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C4=1.013e-4;
E4=1800; %seconds
WiWi1loiter4=exp(-E4*C4/(LDloiter4))

%dropping loiter
Vdrop=69.889;
LDmaxd=15;
LDdrop=0.866*LDmaxd;
%efficincyofprop=0.7;
%Cbhp=0.101;
%Cdrop=Cbhp*(Vdrop/(550*efficincyofprop));
Cdrop=1.013e-4;
Edrop=10; %seconds
WiWi1drop=exp(-Edrop*Cdrop/(LDdrop))

