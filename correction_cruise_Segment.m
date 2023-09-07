%{
Cruise % For cruise use breguets range equation  (R=(V/C)(L/D)ln(Wi-1/wi))
(Wi/Wi-1)=exp(-R*C/(V*(L/D)))
(L/D)cruise=(L/D)max    % for Propeller a/c
C(TSFC)cruise=  Piston propfixed=0.068 ,Piston prop variable=0.068 ,Turboprop=0.085 %mg/W-s

%data
V=138.889
LD=12
R=200000
C=0.085
WiWi1=exp(-R*C/(V*LD))

%data
V=138.889
LD=12
R=656167.979
C=0.085
WiWi1=exp(-R*C/(V*LD))
%}

%Note that for a propeller aircraft, the thrust and the SFC are a function of the flight velocity.
%Typically, one can assume hp = 0.8 except for a fixed-pitch propeller during loiter, where Y'/p = 0.7.
%C(TSFC)=Cpower(V/efficincyofprop)
%C=Cbhp*(V/(550*efficincyofprop))


%{
%CRUISE 1- towards water source
V1=138.889;
efficincyofprop=0.7;
Cbhp=0.085;
C1=Cbhp*(V1/(550*efficincyofprop));
LDmax=16;
LDcruise=16;
R1=200000;
WiWi11=exp(-(R1*C1/(V1*LDcruise)))

%CRUISE 2 - towards fire area
V2=69.44;
efficincyofprop=0.7;
Cbhp=0.085;
C2=Cbhp*(V2/(550*efficincyofprop));
LDmax=16;
LDcruise=16;
R2=400000;
WiWi12=exp(-(R2*C2/(V2*LDcruise)))

%CRUISE 3 - return to water source
V3=138.889;
efficincyofprop=0.7;
Cbhp=0.085;
C3=Cbhp*(V3/(550*efficincyofprop));
LDmax=16;
LDcruise=16;
R3=400000;
WiWi13=exp(-(R3*C3/(V3*LDcruise)))

%CRUISE 4 - back to fire area
V4=69.44;
efficincyofprop=0.7;
Cbhp=0.085;
C4=Cbhp*(V4/(550*efficincyofprop));
LDmax=16;
LDcruise=16;
R4=400000;
WiWi14=exp(-(R4*C4/(V4*LDcruise)))

%CRUISE 5 - Return to airbase 
V5=138.889;
efficincyofprop=0.7;
Cbhp=0.085;
C5=Cbhp*(V5/(550*efficincyofprop));
LDmax=16;
LDcruise=16;
R5=200000;
WiWi15=exp(-(R5*C5/(V5*LDcruise)))
%}

%CRUISE 1- towards water source
%V1=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C1=Cbhp*(V1/(550*efficincyofprop));
%C1=8.448e-5;

%V1=139.88; % in km per hour
efficincyofprop=0.82;
%Cbhp=0.085;
%Cbhp=8.448e-5
V1=500; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC1=Cbhp*(V1/(367.1*efficincyofprop));
C1=Ct_TSFC1;
LDmax1=14;
LDcruise1=LDmax1;
R1=50;
uWiWi11=exp(-(R1*C1/(V1*LDcruise1)))

%CRUISE 2 - towards fire area
%V2=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C2=8.448e-5;

V2=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC2=Cbhp*(V2/(367.1*efficincyofprop));
C2=Ct_TSFC2;
LDmax2=14;
LDcruise2=LDmax2;
R2=250;
uWiWi12=exp(-(R2*C2/(V2*LDcruise2)))

%{
%CRUISE 3 - Towards airport for final landing
V5=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C5=8.448e-5;
LDmax5=13;
LDcruise5=LDmax5;
R5=200000;
WiWi15=exp(-(R5*C5/(V5*LDcruise5)))
%}

%CRUISE 3 - towards water source for another pass
%V3=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C3=8.448e-5;

V3=500; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC3=Cbhp*(V3/(367.1*efficincyofprop));
C3=Ct_TSFC3;
LDmax3=14;
LDcruise3=LDmax3;
R3=250;
uWiWi13=exp(-(R3*C3/(V3*LDcruise3)))

%CRUISE 4 - towards fire area for second drop 
%V4=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C4=8.448e-5;

V4=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC4=Cbhp*(V4/(367.1*efficincyofprop));
C4=Ct_TSFC4;
LDmax4=14;
LDcruise4=LDmax4;
R4=250;
uWiWi14=exp(-(R4*C4/(V4*LDcruise4)))

%CRUISE 5 - Towards airport for final landing
%V5=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C5=8.448e-5;

V5=500; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC5=Cbhp*(V5/(367.1*efficincyofprop));
C5=Ct_TSFC5;
LDmax5=14;
LDcruise5=LDmax5;
R5=200;
uWiWi15=exp(-(R5*C5/(V5*LDcruise5)))

%CRUISE 6 - cruise during drop
%V6=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C6=8.448e-5;

V6=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC6=Cbhp*(V6/(367.1*efficincyofprop));
C6=Ct_TSFC6;
LDmax6=14;
LDcruise6=LDmax6;
R6=0.1;
udropWiWi16=exp(-(R6*C6/(V6*LDcruise6)))

%CRUISE 7 - cruise during scooping
%V7=36;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C7=8.448e-5;

efficincyofpropscoop=0.77
V7=129.6; % in km per hour
Cbhpscoop=0.42581; % in liters per hour;
Ct_TSFC7=Cbhpscoop*(V7/(367.1*efficincyofpropscoop));
C7=Ct_TSFC7;
LDmax7=11;
LDcruise7=LDmax7;
R7=0.4;
uScoopWiWi17=exp(-(R7*C7/(V7*LDcruise7)))

