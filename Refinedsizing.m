                                                         %% %%%%Refined Sizing%%%% %%
%{
RW0=RWc+RWp+RWf+RWe
%Crew+Payload+Fuel+Empty
RWc=407.855 %in pounds for 185kg
RWp=Wfixedpayload+Wdroppedpayload
Wfixedpayload=0
Wdroppedpayload=11023.11    % in pounds for 5000kg
RW0=RWc+RWp+RWf+(RWemptyWgross)*Wgross
%for each non payload drop segment i,
Wfi=(1-(Wi/Wi-1))Wi-1
Totalmissionfuel=Wfm=summationof(Wfi)
Wf=(1+RFF)*Wfm %RFF=Reserved fuel fraction
%}


                                                  %%  %%%%%Cruise SEGMENTS%%%%%%%  %%
%%%%%Cruise SEGMENTS%%%%%%%
% here the value of LbyD will be according to the refined sizing 
% LbyD Is given By
                                             %% %%%% CRUISE LbyD Calculation %%%% %%
%With payload
AR=8
rhocruisepayload=0.642580
Vcruisepayload=69.44
qcruisepayload=0.5*rhocruisepayload*(Vcruisepayload)^2
WBYSpayload=WbyScruise_payload*9.81
Cd0payload=0.0161
epayload=e
refinedLbyDcruise_pay=1/(((qcruisepayload*Cd0payload)/WBYSpayload)+(WBYSpayload/(qcruisepayload*pi*epayload*AR))) %WBYS in newton meter square

%Withoutpayload
AR=8
rhocruisenopayload=0.642580
Vcruisenopayload=138.88
qcruisenopayload=0.5*rhocruisenopayload*(Vcruisenopayload)^2
WBYSnopayload=WbyScruise_nopayload*9.81
Cd0nopayload=0.0143
enopayload=e1
refinedLbyDcruise_nopay=1/(((qcruisenopayload*Cd0nopayload)/WBYSnopayload)+(WBYSnopayload/(qcruisenopayload*pi*enopayload*AR))) %WBYS in newton meter square

                                                     %% %%%% SEGMENTS of CRUISE %%%% %%
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
%LDmax1=14;
LDcruise1=refinedLbyDcruise_nopay %LDmax1;
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
%LDmax2=14;
LDcruise2=refinedLbyDcruise_pay %LDmax2;
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
%LDmax3=14;
LDcruise3=refinedLbyDcruise_nopay %LDmax3;
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
%LDmax4=14;
LDcruise4=refinedLbyDcruise_pay %LDmax4;
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
%LDmax5=14;
LDcruise5=refinedLbyDcruise_nopay %LDmax5;
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
%LDmax6=14;
LDcruise6=refinedLbyDcruise_pay %LDmax6;
R6=0.1;
udropWiWi16=exp(-(R6*C6/(V6*LDcruise6)))

%CRUISE 7 - cruise during scooping
%V7=36;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
%C7=8.448e-5;

V7=129.6; % in km per hour
Cbhp=0.30415; % in liters per hour;
Ct_TSFC7=Cbhp*(V7/(367.1*efficincyofprop));
C7=Ct_TSFC7;
%LDmax7=14;
LDcruise7=refinedLbyDcruise_nopay %LDmax7;
R7=0.4;
uScoopWiWi17=exp(-(R7*C7/(V7*LDcruise7)))


%{
%CRUISE 1- towards water source
V1=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C1=Cbhp*(V1/(550*efficincyofprop));
C1=8.448e-5;
LDmax1=13;
LDcruise1=LDmax1;
R1=50000;
WiWi11=exp(-(R1*C1/(V1*LDcruise1)))

%CRUISE 2 - towards fire area
V2=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C2=8.448e-5;
LDmax2=13;
LDcruise2=LDmax2;
R2=250000;
WiWi12=exp(-(R2*C2/(V2*LDcruise2)))

%CRUISE 3 - towards water source for another pass
V3=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C3=8.448e-5;
LDmax3=13;
LDcruise3=LDmax3;
R3=250000;
WiWi13=exp(-(R3*C3/(V3*LDcruise3)))

%CRUISE 4 - towards fire area for second drop 
V4=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C4=8.448e-5;
LDmax4=13;
LDcruise4=LDmax4;
R4=250000;
WiWi14=exp(-(R4*C4/(V4*LDcruise4)))

%CRUISE 5 - Towards airport for final landing
V5=138.889;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C5=8.448e-5;
LDmax5=13;
LDcruise5=LDmax5;
R5=200000;
WiWi15=exp(-(R5*C5/(V5*LDcruise5)))

%CRUISE 6 - cruise during drop
V6=69.44;
%efficincyofprop=0.7;
%Cbhp=0.085;
%C2=Cbhp*(V2/(550*efficincyofprop));
C6=8.448e-5;
LDmax6=13;
LDcruise6=LDmax6;
R6=100;
dropWiWi16=exp(-(R6*C6/(V6*LDcruise6)))
%}

                                                    %%  %%%%%Loiter SEGMENTS%%%%%%%
                                                    
                                                    %% Loiter LbyD Calculation %%
rholoiter=0.870280
Vloiter=50
AR=8
qloiter=0.5*rholoiter*(Vloiter)^2
WBYSloiter=WbySloiter_payload*9.81
Cd0loiter=0.0161
RefinedLbyDloiter=1/(((qloiter*Cd0loiter)/WBYSloiter)+(WBYSloiter/(qloiter*pi*e*AR))) %WBYS in newton meter square

                                                %% %% Segments of Loiter %%% %%
                                                
efficincyofpropL=0.77

% loiter near water source without payload
% loiter 12
%V1=50;
%LDmax1=14;
LDloiter1=RefinedLbyDloiter %0.866*LDmax1;
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
%LDmax2=14;
LDloiter2=RefinedLbyDloiter %0.866*LDmax2;
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
%LDmax3=14;
LDloiter3=RefinedLbyDloiter %0.866*LDmax3;
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
%LDmax4=14;
LDloiter4=RefinedLbyDloiter %0.866*LDmax4;
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
%LDmaxd=15;
LDdrop=RefinedLbyDloiter %0.866*LDmaxd;
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


%{
% loiter near water source without payload
% loiter 1
V1=50;
%LDmax1=14;
LDloiter1=LbyDloiter         %0.866*LDmax1;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C1=1.013e-4;
E1=30; %seconds
WiWi1loiter1=exp(-E1*C1/(LDloiter1))

% loiter near fire area with payload
%loiter 2
V2=50;
%LDmax2=14;
LDloiter2=LbyDloiter      %0.866*LDmax2;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C2=1.013e-4;
E2=1800; %seconds
WiWi1loiter2=exp(-E2*C2/(LDloiter2))

% loiter near water source without payload
%loiter 3
V3=50;
%LDmax3=14;
LDloiter3=LbyDloiter      %0.866*LDmax3;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C3=1.013e-4;
E3=30; %seconds
WiWi1loiter3=exp(-E3*C3/(LDloiter3))

% loiter near fire area with payload
%loiter 4
V4=50;
%LDmax4=14;
LDloiter4=LbyDloiter       %0.866*LDmax4;
%efficincyofprop=0.7;
%Cbhp=0.101;
%C1=Cbhp*(V1/(550*efficincyofprop));%
C4=1.013e-4;
E4=1800; %seconds
WiWi1loiter4=exp(-E4*C4/(LDloiter4))
%}

                                             %%  %%%%Mission Segments%%%%%%  %%

RW1by0=0.970             %Takeoff Engine startup
RW2by1=0.985             %climb
RW3by2=uWiWi11            %cruise1
RW4by3=uWiWi1loiter1      %loiter1
RW5by4=uScoopWiWi17             %scoop landing
RW6by5=0.985             %climb
RW7by6=uWiWi12            %cruise2
RW8by7=uWiWi1loiter2      %loiter2
RW9by8=udropWiWi16         %drop
RW10by9=0.990            %climb
RW11by10=uWiWi13           %cruise3
RW12by11=uWiWi1loiter3     %loiter3
RW13by12=uScoopWiWi17            %scoop
RW14by13=0.985            %climb
RW15by14=uWiWi14           %cruise4
RW16by15=uWiWi1loiter4     %loiter4
RW17by16=udropWiWi16        %drop
RW18by17=0.990            %climb
RW19by18=uWiWi15           %cruise5
RW20by19=0.995            %landing shutdown
 
                                                  %% %%%Fuel estimations at each segments %% %%
%{
Wgrossguess_kg=linspace(20000,40000,2000)
%Seg 1 takeoff
%Wfi=(1-(Wi/Wi-1))Wi-1
Wf01=(1-(RW1by0))*Wgrossguess_kg
W1=Wgrossguess_kg-Wf01

%Seg 2  climb
Wf12=(1-(RW2by1))*W1
W2=W1-Wf12

%Seg 3 cruise1
Wf23=(1-(RW3by2))*W2
W3=W2-Wf23

%Seg 4  loiter1 
Wf34=(1-(RW4by3))*W3
W4=W3-Wf34

%Seg 5 scoop landing
Wf45=(1-(RW5by4))*W4
W5=W4-Wf45

%Seg 6 climb
Wf56=(1-(RW6by5))*W5
W6=W5-Wf56

%Seg 7 cruise 2
Wf67=(1-(RW7by6))*W6
W7=W6-Wf67

%Seg 8 loiter 2
Wf78=(1-(RW8by7))*W7
W8=W7-Wf78

%Seg 9 drop 
Wf89=(1-(RW9by8))*W8
W9=W8-Wf89

%Seg 10 climb
Wf910=(1-(RW10by9))*W9
W10=W9-Wf910

%Seg 11 cruise 3
%Wfi=(1-(Wi/Wi-1))Wi-1
Wf1011=(1-(RW11by10))*W10
W11=W10-Wf1011

%Seg 12 loiter3
Wf1112=(1-(RW12by11))*W11
W12=W11-Wf1112

%Seg 13 scoop
Wf1213=(1-(RW13by12))*W12
W13=W12-Wf1213

%Seg 14 climb
Wf1314=(1-(RW14by13))*W13
W14=W13-Wf1314

%Seg 15 cruise4
Wf1415=(1-(RW15by14))*W14
W15=W14-Wf1415

%Seg 16  loiter4
Wf1516=(1-(RW16by15))*W15
W16=W15-Wf1516

%Seg 17   drop
Wf1617=(1-(RW17by16))*W16
W17=W16-Wf1617

%Seg 18   climb
Wf1718=(1-(RW18by17))*W17
W18=W17-Wf1718

%Seg 19   cruise
Wf1819=(1-(RW19by18))*W18
W19=W18-Wf1819

%Seg 20   landing
Wf1920=(1-(RW20by19))*W19
W20=W19-Wf1920

%for each non payload drop segment i,
%Wfi=(1-(Wi/Wi-1))Wi-1
%findingthe Totalmissionfuel=
%Wfm=summation of (Wfi)
Wfm=Wf01+Wf12+Wf23+Wf34+Wf45+Wf56+Wf67+Wf78+Wf89+Wf910+Wf1011+Wf1112+Wf1213+Wf1314+Wf1415+Wf1516+Wf1617+Wf1718+Wf1819+Wf1920
RFF=0.1     % (10% percentage)
Wftotalmissionfuel=(1+RFF)*Wfm %RFF=Reserved fuel fraction
%}

Refined_W20Wgross=RW1by0*RW2by1*RW3by2*RW4by3*RW5by4*RW6by5*RW7by6*RW8by7*RW9by8*RW10by9*RW11by10*RW12by11*RW13by12*RW14by13*RW15by14*RW16by15*RW17by16*RW18by17*RW19by18*RW20by19

                       %% %%%%%%%%%Estimation of empty Weight fraction for refined sizing%%%%%%%%%% %%
                       
%We/W0=a+((b)*(W0^C1)*(A^C2)*((Hp/W0)^C3)*((W0/S)^C4)*(Vmax^C5))
%For flying boat
a=0
b=0.42
C1=-0.01
C2=0.10
C3=0.05
C4=-0.12
C5=0.18

%all in fps unit
%A=Aspect Ratio
%Hp/W0=Thrust loading at takeoff (shp/lb)
%W0/S=Wing loading at takeoff (lb/ft^2)
%Vmax=Maximum velocity (knots)
%W0=Design gross Weight (pounds)
A=8
HpbyW0=0.0731
W0byS=WbySTakeoff_nopayloadlb
Vmax=270 %knots 500kmph, 135knots for 250 kmph
%Wgrossguess_lb=linspace(44092.452,88184.905,2000)     %66306  %pounds(lbs) for 30076 kg
%We/W0=a+((b)*(W0^C1)*(A^C2)*((Hp/W0)^C3)*((W0/S)^C4)*(Vmax^C5))
%{
RWebyW0=a+((b)*(Wgrossguess_lb.^C1)*(A^C2)*((HpbyW0)^C3)*((W0byS)^C4)*(Vmax^C5))
plot(RWebyW0,Wgrossguess_lb,'g')
xlabel('Refined Weight Fraction')
ylabel('Gross Weight guess(lb)')
title('Refined Weight Fraction vs Gross weight guess')
hold on
%}

                                            %% %%%%%% Refined GROSS WEIGHT CALCULATIONS%%%%%%%%%
%{
%RW0=RWc+RWp+RWf+RWe
%Crew+Payload+Fuel+Empty
RWc=185  %407.855 %in pounds for 185kg
Wfixedpayload=0
Wdroppedpayload=5000  %11023.11    % in pounds for 5000kg
RWp=Wfixedpayload+Wdroppedpayload
RWf=Wftotalmissionfuel
RWemptyWgross=RWebyW0
RW0kg=RWc+RWp+RWf+(RWemptyWgross).*Wgrossguess_kg
RW0lb=2.205*RW0kg
%}
%RefinedWcrew=185  %407.855 %in pounds for 185kg
%RefinedWpayload=5000
%RefinedWfuelWgross=1.06*(1-Refined_W20Wgross)
%RefinedWgross=(RefinedWcrew+RefinedWpayload)/(1-(RefinedWfuelWgross)-(RefinedWemptyWgross))

%%%%%%%%%%%%
RefinedWfuelWgross=1.06*(1-Refined_W20Wgross)

Wcrew_lb=407.855;              %Crew Weight
Wpayload_lb=11023.11;          %Payload Weight

Wgrossguess_lb=linspace(20000,100000,80000)
RWebyW0=a+((b)*(Wgrossguess_lb.^C1)*(A^C2)*((HpbyW0)^C3)*((W0byS)^C4)*(Vmax^C5)) %WemptyWgross= 1.05*((eWgross).^-0.05)*1;

RefinedR=[]
for i=1:length(RWebyW0)
    refinedA =(1-(RefinedWfuelWgross)-(RWebyW0(i)));
    RefinedR(i)=refinedA;
end
disp(RefinedR);

RefinedWgross=[]
for i=1:length(RefinedR)
    RWgross=(Wcrew_lb+Wpayload_lb)/(RefinedR(i));
    RefinedWgross(i)=RWgross./2;
end
disp(RefinedWgross);

plot(RWebyW0,Wgrossguess_lb,'r')
hold on
plot(RWebyW0,RefinedWgross,'g')
hold on

for x=1:length(RWebyW0)
    rele= Wgrossguess_lb(x);
    ra=uint64(rele);
    rele1 = RefinedWgross(x);
    rb=uint64(rele1);
        if ra==rb
            fprintf("found %f  %f\n",ra,rb)
            refinedval = rele*ones(1,length(RWebyW0));
            plot(RWebyW0,refinedval,'.')
            break
        else
            fprintf("not found %f  %f\n",ra,rb)
        end
end

ylabel('Wgross,lb')
xlabel('EmptyWeight fraction')
legend('Estimated Weight','Obtained Weight')

% final Initial sizing values
CalculatedWgross=rele
CWemptyWgross=a+((b)*(rele^C1)*(A^C2)*((HpbyW0)^C3)*((W0byS)^C4)*(Vmax^C5)) %1.05*((ele).^-0.05)*1;
CalculatedWempty=CWemptyWgross*rele
CalculatedWfuel= RefinedWfuelWgross*rele
Wpayload=11023.11
Wcrew=407.855
Weightwithnopayload=CalculatedWempty+CalculatedWfuel+Wcrew

%{
%%%%%%%%%%%
plot(RWemptyWgross,RW0lb,'r')
xlabel('Refined Weight Fraction')
ylabel('Gross Weight guess(lb)')
title('Refined Weight Fraction vs Gross weight guess')

legend('Estimated gross weight','Calculated gross weight')



WfuelWgross=1.06*(1-W20Wgross)
eWgross=31554
WemptyWgross= 1.05*((eWgross)^-0.05)*1

Wcrew=185;                                                %Crew Weight
Wpayload=5000;                                            %Payload Weight
Wgross=(Wcrew+Wpayload)/(1-(WfuelWgross)-(WemptyWgross))
%}