%Wi/Wi-1
%Wpass1=(W10/W9)*(W9/W8)*(W8/W7)*(W7/W6)*(W6/W5)*(W5/W4)*(W4/W3)*(W3/W2)*(W2/W1)*(W1/Wo)
%Wpass2=(W20/W19)*(W19/W18)*(W18/W17)*(W17/W16)*(W16/W15)*(W15/W14)*(W14/W13)*(W13/W12)*(W12/W11)*(W11/W10)

%DATA

W1=0.970             %Takeoff Engine startup
W2=0.985             %climb
W3=uWiWi11            %cruise1
W4=uWiWi1loiter1      %loiter1
W5=uScoopWiWi17 %0.996             %scoop landing %ScoopWiWi17 
W6=0.985             %climb
W7=uWiWi12            %cruise2
W8=uWiWi1loiter2      %loiter2
W9=udropWiWi16 %WiWi1drop         %drop
W10=0.990            %climb
W11=uWiWi13           %cruise3
W12=uWiWi1loiter3     %loiter3
W13=uScoopWiWi17 %0.996            %scoop  %ScoopWiWi17  
W14=0.985            %climb
W15=uWiWi14           %cruise4
W16=uWiWi1loiter4     %loiter4
W17=udropWiWi16       %drop
W18=0.990            %climb
W19=uWiWi15           %cruise5
W20=0.995            %landing shutdown

Wpass1=(W10)*(W9)*(W8)*(W7)*(W6)*(W5)*(W4)*(W3)*(W2)*(W1)             % 
Wpass2=(W20)*(W19)*(W18)*(W17)*(W16)*(W15)*(W14)*(W13)*(W12)*(W11)          % not considering dropping segment 
W20Wgross=Wpass1*Wpass2

%W20/Wgross=(W1/W0)*(W2/W1)*(W3/W2)*(W4/W3)*(W5/W4).....*(W20/W19)

%Wf/Wgross=1.06(1-W20/Wgross)for calculating fuel fraction
%Wempty/Wgross= A*((Wgross)^C)*K for calculating empty weight fraction
%%Wgross=(Wcrew+Wpayload)/(1-(Wfuel/Wgross)-(Wempty/Wgross)) for gross weight calculation

WfuelWgross=1.06*(1-W20Wgross)
eWgross=31554
WemptyWgross= 1.05*((eWgross)^-0.05)*1

Wcrew=185;                                                %Crew Weight
Wpayload=5000;                                            %Payload Weight
Wgross=(Wcrew+Wpayload)/(1-(WfuelWgross)-(WemptyWgross))









