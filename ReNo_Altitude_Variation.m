%Finding the reynolds number
%ReNo=(rho*Vel*Length)/Viscosity
%rho=1.225; %kg/m3 % at sea level ,CruiseDensity=0.6601   %kg/m3 Density=
%rho=linspace(0.6601,1.225,100)
%Density	1.24	Kg/m^3
    %Velocity	69.44	m/s
    %Length	2	m
    %Viscosity	0.00001778	Ns/m^2
%{    
rhorange=linspace(0.64,1.1551,100)
ZR=[]
for i=1:length(rhorange)
    %rho=0.6601
    %Velocity= 69.44 %138.889; %V=69.44 with payload 
    Vel=linspace(0,139.88,1000)
    Length=3.5
    Viscosity=0.0000181 %kg/m*s
    ReNo=((rhorange(i))*Vel*Length)/Viscosity
    plot(Vel,ReNo,'r')
    hold on
end
%ZR=ReNo(i)
    xlabel('Velocity (m/s)')
    ylabel('Reynolds Number(Re)')
    title('Reynolds Number variation throughout the flight over wing for different densities') 
%}
    
%Reynolds number at zero altitude    
rho_at_zero_Altitude=1.1551
Viscosity_at_zero_Altitude=1.8614e-5 %kg/m*s  
Velocity_Range=linspace(0,139.88,1000)
Length_of_Chord=4.1493    
Reynolds_Number_at_Zero_Altitude=(rho_at_zero_Altitude*Velocity_Range*Length_of_Chord)/Viscosity_at_zero_Altitude
plot(Velocity_Range,Reynolds_Number_at_Zero_Altitude,'r')  
hold on

%Reynolds number at 3000m altitude    
rho_at_landTakeoff_Altitude=0.870280
Viscosity_at_landTakeoff_Altitude=1.7667e-5 %kg/m*s  
Velocity_Range=linspace(0,139.88,1000)
Length_of_Chord=4.1493    
Reynolds_Number_at_landTakeoff_Altitude=(rho_at_landTakeoff_Altitude*Velocity_Range*Length_of_Chord)/Viscosity_at_landTakeoff_Altitude
plot(Velocity_Range,Reynolds_Number_at_landTakeoff_Altitude,'g')
hold on

%Reynolds number at 6000m altitude    
rho_at_Cruise_Altitude=0.64258
Viscosity_at_Cruise_Altitude=1.6689e-5 %kg/m*s  
Velocity_Range=linspace(0,139.88,1000)
Length_of_Chord=4.1493    
Reynolds_Number_at_Cruise_Altitude=(rho_at_Cruise_Altitude*Velocity_Range*Length_of_Chord)/Viscosity_at_Cruise_Altitude
plot(Velocity_Range,Reynolds_Number_at_Cruise_Altitude,'b')

%hold on

%plot(69.44,Reynolds_Number_at_Cruise_Altitude,'.')
%hold on

%plot(138.88,Reynolds_Number_at_Zero_Altitude,'.')

xlabel('Velocity (m/s)')
ylabel('Reynolds Number(Re)')
title('Reynolds Number variation throughout the flight over wing') 
legend('ReNo at 0 Altitude','ReNo at 3km Altitude','ReNo at 6km Altitude')



