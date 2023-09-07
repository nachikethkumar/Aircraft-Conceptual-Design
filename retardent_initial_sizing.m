%V1=139.88; % in km per hour
efficincyofprop=0.82;
%Cbhp=0.085;
%Cbhp=8.448e-5
V1=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC1=Cbhp*(V1/(367.1*efficincyofprop));
C1=Ct_TSFC1;
LDmax1=14;
LDcruise1=LDmax1;
R1=200;
uWiWi11=exp(-(R1*C1/(V1*LDcruise1)))

%CRUISE 2 - towards fire area

V2=500; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC2=Cbhp*(V2/(367.1*efficincyofprop));
C2=Ct_TSFC2;
LDmax2=14;
LDcruise2=LDmax2;
R2=200;
uWiWi12=exp(-(R2*C2/(V2*LDcruise2)))

%CRUISE 3 - towards water source for another pass

V3=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC3=Cbhp*(V3/(367.1*efficincyofprop));
C3=Ct_TSFC3;
LDmax3=14;
LDcruise3=LDmax3;
R3=200;
uWiWi13=exp(-(R3*C3/(V3*LDcruise3)))

%CRUISE 4 - towards fire area for second drop 

V4=500; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC4=Cbhp*(V4/(367.1*efficincyofprop));
C4=Ct_TSFC4;
LDmax4=14;
LDcruise4=LDmax4;
R4=200;
uWiWi14=exp(-(R4*C4/(V4*LDcruise4)))

%CRUISE 6 - cruise during drop

V6=250; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC6=Cbhp*(V6/(367.1*efficincyofprop));
C6=Ct_TSFC6;
LDmax6=14;
LDcruise6=LDmax6;
R6=0.1;
udropWiWi16=exp(-(R6*C6/(V6*LDcruise6)))

%%%%%%%%%%%%%%%%%%   loiter %%%%%%%%%%%%%%%%%%
LDmax2=14;
LDloiter2=0.866*LDmax2;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
%C2=1.013e-4;
efficincyofpropL=0.77
V2loiter=180; % in km per hour
Cbhpl=0.36498; % in liters per hour;
Ct_TSFC2loiter=Cbhpl*(V2loiter/(367.1*efficincyofpropL));
C2loiter=Ct_TSFC2loiter;
E2=0.5; %hour
uWiWi1loiter2=exp(-E2*C2loiter/(LDloiter2))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Mission segemnts
W1=0.970             %Takeoff Engine startup
W2=0.985             %climb
W3=uWiWi11           %cruise1
W4=uWiWi1loiter2      %loiter1
W5=udropWiWi16       %0.996 %drop
W6=0.985             %climb
W7=uWiWi12            %cruise2
W8=uWiWi1loiter2      %land
W9=0.970              %take off
W10=0.985             %climb
W11=uWiWi13           %cruise3
W12=uWiWi1loiter2     %loiter3
W13=udropWiWi16      %drop
W14=0.985            %climb
W15=uWiWi14           %cruise4
W16=0.995              %land


W20Wgross=(W16)*(W15)*(W14)*(W13)*(W12)*(W11)*(W10)*(W9)*(W8)*(W7)*(W6)*(W5)*(W4)*(W3)*(W2)*(W1)

WfuelWgross=1.06*(1-W20Wgross)
eWgross=31554
WemptyWgross= 1.05*((eWgross)^-0.05)*1

Wcrew=185;                                                %Crew Weight
Wpayloadretardent=4500;                                            %Payload Weight
Wgross=(Wcrew+Wpayloadretardent)/(1-(WfuelWgross)-(WemptyWgross))