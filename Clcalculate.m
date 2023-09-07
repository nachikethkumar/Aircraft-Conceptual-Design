% Calculating The Cl Required
%for Landing in Land
Sland= 3280.84 %feet 1 km
Vapproachknots =sqrt(Sland/0.3) %Sland should be in feet, The approach speed (Va) in knots
Vapproachmetersec=Vapproachknots/1.944 % converting the Vapproach in meter per sec from knots
VStall=Vapproachmetersec/1.3 %where Vs is stall velocity
%Floatation Characteristics 1.5 km(4921.26 feet) on land or 1 km(3280.84 feet) on water
%WbySLanding=0.5*((VStall)^2)*Density*CLlMAXanding

ApproachVELOCITY=1.3*VStall
CLlanding=2*WbySLanding/(((ApproachVELOCITY)^2)*Density)
plot(WbySLanding,CLlanding,'r')
hold on

% For Cruise at no payload
CruiseVELOCITY=138.884 %m/s
%WbyScruise=0.5*((VStall)^2)*CruiseDensity*CLMAXcruise
CLcruise=2*WbyScruise/(((CruiseVELOCITY)^2)*CruiseDensity)
plot(WbyScruise,CLcruise,'g')
hold on

% For Cruise at full payload
CruiseVELOCITYpayload=69.44 %m/s
%WbyScruise=0.5*((VStall)^2)*CruiseDensity*CLMAXcruise
CLcruisepayload=2*WbyScruise/(((CruiseVELOCITYpayload)^2)*CruiseDensity)
plot(WbyScruise,CLcruisepayload,'c')
hold on

% For Take off

Takeoffspeed = 1.1*VStall
%WbySTakeoff=WbySLanding/0.95
CLTakeoff=2*WbySTakeoff/(((Takeoffspeed)^2)*Density)
plot(WbySTakeoff,CLTakeoff,'b')

xlabel('WbyS (Wing Loading)')
ylabel('CL( Coefficient of Lift)')
title('WbyS vs CL')
legend('CL during Landing', 'CL during Cruise no payload','CL during Cruise with payload','CL during Takeoff')