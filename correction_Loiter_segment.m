%{
Loiter % For Loiter use Endurance Equation       (E=(1/C)(L/D)ln(Wi-1/wi))
(Wi/Wi-1)=exp(-E*C/(L/D))
(L/D)loiter=0.866(L/D)max % for Propeller a/c
C(TSFC)loiter=  Piston propfixed=0.085 ,Piston prop variable=0.085 ,Turboprop=0.101 %mg/W-s
%}
%data
efficincyofpropL=0.77

% loiter near water source without payload
% loiter 1
%V1=50;
LDmax1=14;
LDloiter1=0.866*LDmax1;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
%C1=1.013e-4;

V1loiter=180; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFC1loiter=Cbhpl*(V1loiter/(367.1*efficincyofpropL));
C1loiter=Ct_TSFC1loiter;
E1=0.00833; %hours
uWiWi1loiter1=exp(-E1*C1loiter/(LDloiter1))

% loiter near fire area with payload
%loiter 2
%V2=50;
LDmax2=14;
LDloiter2=0.866*LDmax2;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
%C2=1.013e-4;

V2loiter=180; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFC2loiter=Cbhpl*(V2loiter/(367.1*efficincyofpropL));
C2loiter=Ct_TSFC2loiter;
E2=0.5; %hour
uWiWi1loiter2=exp(-E2*C2loiter/(LDloiter2))

% loiter near water source without payload
%loiter 3
%V3=50;
LDmax3=14;
LDloiter3=0.866*LDmax3;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
%C3=1.013e-4;

V3loiter=180; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFC3loiter=Cbhpl*(V3loiter/(367.1*efficincyofpropL));
C3loiter=Ct_TSFC3loiter;
E3=0.00833; %hour
uWiWi1loiter3=exp(-E3*C3loiter/(LDloiter3))

% loiter near fire area with payload
%loiter 4
%V4=50;
LDmax4=14;
LDloiter4=0.866*LDmax4;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
%C4=1.013e-4;

V4loiter=180; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFC4loiter=Cbhpl*(V4loiter/(367.1*efficincyofpropL));
C4loiter=Ct_TSFC4loiter;
E4=0.5; %hour
uWiWi1loiter4=exp(-E4*C4loiter/(LDloiter4))

%dropping loiter
%Vdrop=69.889;
LDmaxd=15;
LDdrop=0.866*LDmaxd;
%efficincyofprop=0.7;
%Cbhp=0.101;
%Cdrop=Cbhp*(Vdrop/(550*efficincyofprop));
%Cdrop=1.013e-4;

Vdroploiter=250; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFCdroploiter=Cbhpl*(Vdroploiter/(367.1*efficincyofpropL));
Cdroploiter=Ct_TSFCdroploiter;
Edrop=0.00277; %hour
uWiWi1drop=exp(-Edrop*Cdroploiter/(LDdrop))

