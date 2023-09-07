%%%%%%%%%%%Landing distance consideration%%%%%%%%%%%%%%%

%Landing distance consideration: The stalling speed Vs is estimated in the following manner.
%Sland is prescribed as
Sland= 3280.84 %feet 1 km
Vapproachknots =sqrt(Sland/0.3) %Sland should be in feet, The approach speed (Va) in knots
Vapproachmetersec=Vapproachknots/1.944 % converting the Vapproach in meter per sec from knots
VStall=Vapproachmetersec/1.3 %where Vs is stall velocity
%Floatation Characteristics 1.5 km(4921.26 feet) on land or 1 km(3280.84 feet) on water

%Range of (CLMAX)Landing for flying boats is 1.8 to 3.4.
%The WL/WTO for firefighter is in range of 0.79 - 0.95. Under FAR 23 rules the Specification requires that Sland = 649.8336 m = 2132 ft

Density= 1.225 %kg/m3 % at sea level 
CLMAXlanding=linspace(1.0,3.4,20)
WbySLanding=0.5*((VStall)^2)*Density*CLMAXlanding
plot(CLMAXlanding,WbySLanding,'*')
xlabel('CLMAX')
ylabel('W/S wing loading N/m2')
title('CLMAX vs Wing loading')

hold on

%%%%%%%%%%%%%%%%%%%%%CRUSE CONSERDERATION%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CRUSE CONSERDERATION
%We consider that our aircraft max altitude is to be 6000 m. Corresponding to this altitude density is 0.66kg/m3, 
%CLmax =1.2 – 1.8, At this altitude in max velocity is Vmax= 540 kmph
%138.889
%For crusing we have to use the following formula 𝑾/𝑺 =𝟏𝟐𝝆𝑽𝑺𝟐𝑪𝒍𝒎𝒂𝒙

CruiseDensity=0.6601   %kg/m3
CLMAXcruise =linspace(1.0,1.8,20)
WbyScruise=0.5*((VStall)^2)*CruiseDensity*CLMAXcruise
plot(CLMAXcruise,WbyScruise,'+')

hold on 

%%%%%%%%%%%%%%%%%%%%%%%%TAKE OFF CONSIDERATION%%%%%%%%%%%%%%%%%%%%%%%
%From ROSKOM table for flying boat we conclude that 
%WL/WTO = 0.79- 0.95 (LAND)
%WL/WTO= 0.98- 1.0 (WATER)

WbySTakeoff=WbySLanding/0.95
plot(CLMAXlanding,WbySTakeoff,'.')

legend('CLMAX landing vs Wing loading-LANDING','CLMAX cruise vs Wing loading-CRUISE','CLMAX La vs Wing loading-Takeoff')


%%%%%%%%%%%%%%

%Wingloading of current aircrafts are in range of (300,370)kg/m^2
%in newton (2943-3629.7)N/m^2























