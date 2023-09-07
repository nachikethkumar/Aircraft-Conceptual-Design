%{
%Landing distance consideration: The stalling speed Vs is estimated in the following manner.
%Sland is prescribed as
Sland= 3280.84 %feet
Vapproachknots =sqrt(Sland/0.3) %Sland should be in feet, The approach speed (Va) in knots
Vapproachmetersec=Vapproachknots/1.944 % converting the Vapproach in meter per sec from knots
VStall=Vapproachmetersec/1.3 %where Vs is stall velocity
%Floatation Characteristics 1.5 km(4921.26 feet) on land or 1 km(3280.84 feet) on water

%Range of (CLMAX)Landing for flying boats is 1.8 to 3.4.
%The WL/WTO for firefighter is in range of 0.79 - 0.95. Under FAR 23 rules the Specification requires that Sland = 649.8336 m = 2132 ft
Density= 1.225 %kg/m3 % at sea level 

CLMAXlanding=linspace(1.8,3.4,20)
WbySLanding=0.5*((VStall)^2)*Density*CLMAXlanding

%%%%%finding the wing Area using wingloading and Gross Weight
GrossWeight=CalculatedWgross
WINGAREA=[]
for i=1:length(WbySLanding)
   WingArea=GrossWeight/WbySLanding(i)
   WINGAREA(i)=WingArea
end
disp(WINGAREA)


plot(WbySLanding,WINGAREA,'*')
xlabel('Wing Loading')
ylabel('Wing Area m2')
title('Wing Loading vs Wing Area')

hold on
%%%% wing Area using Cruise wing Loading 
CRUISEWINGAREA=[]
for i=1:length(WbyScruise)
   WingArea=GrossWeight/WbyScruise(i)
   CRUISEWINGAREA(i)=WingArea
end
disp(CRUISEWINGAREA)

plot(WbyScruise,CRUISEWINGAREA,'+')
%{
hold on
W1=0.970       %Takeoff Engine startup
W2=0.985       %climb
W3=0.9906      %cruise
W4=0.9992      %loiter
W5=0.995       %scoop landing
W6=0.985       %climb
W7=0.9681      %cruise
wbyscruise11=[]
for i=1:length(CRUISEWINGAREA)
   wbyscruise1= (W7)*(W6)*(W5)*(W4)*(W3)*(W2)*(W1)*(GrossWeight/CRUISEWINGAREA(i))
   wbyscruise11(i)=wbyscruise1
end
disp(wbyscruise11)

plot(wbyscruise11,CRUISEWINGAREA,'.')

hold on
wbyscruise111=[370,170]
CRUISEWINGAREA1=[99,100]

plot(wbyscruise111,CRUISEWINGAREA1,'r')
%}
xlabel('Wing Loading')
ylabel('Cruise Wing Area m2')
title('Wing Loading vs Wing Area')
legend('Wing Area during Landing', 'Wing Area during Cruise')

%}

% Actual Wing Loading 
%WINGAREA=CalculatedWgross./WbySTakeoff


wbyscruise1= (W6)*(W5)*(W4)*(W3)*(W2)*(W1)*(198.35)
  
disp(wbyscruise1)

