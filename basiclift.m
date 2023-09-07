%%%%%%%For velocity without payload%%%%%%%%%%%
Lift= CalculatedWgross*9.81;  % Weight=
rho=1.225; %kg/m3 % at sea level ,CruiseDensity=0.6601   %kg/m3 Density= 
Velocity= 69.44 %138.889; %V=69.44 with payload 
Cl=linspace(1.2,3.4,100);
%Lift=0.5*rho*Area*Velocity^2*Cl
AREA=[]
for i=1:length(Cl)
    Area=(2*Lift)/((rho)*(Velocity^2)*(Cl(i)));
    AREA(i)=Area;
end
disp(AREA)

plot(Cl,AREA,'o')
xlabel('Coeffiecient of lift')
ylabel('Wing Area, m^2')
title('Plot of Cl vs Wing Area')
hold on

%%%%%%%For velocity without payload%%%%%%%%%%%
Velocity1=138.889
AREA1=[]
for i=1:length(Cl)
    Area1=(2*Lift)/((rho)*(Velocity1^2)*(Cl(i)));
    AREA1(i)=Area1;
end
disp(AREA1)

plot(Cl,AREA1,'+')
xlabel('Coeffiecient of lift')
ylabel('Wing Area, m^2')
title('Plot of Cl vs Wing Area')
legend('During full payload, At V= 69.44 m/s','During no payload,At V= 138.889 m/s')