%Finding the reynolds number
%ReNo=(rho*Vel*Length)/Viscosity
%rho=1.225; %kg/m3 % at sea level ,CruiseDensity=0.6601   %kg/m3 Density=
%rho=linspace(0.6601,1.225,100)
%Density	1.24	Kg/m^3
    %Velocity	69.44	m/s
    %Length	2	m
    %Viscosity	0.00001778	Ns/m^2
    
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

rhorang=0.870280  
Vel1=linspace(0,139.88,1000)
    Length1=4.2
    Viscosity1=0.000017667 %kg/m*s
    ReNo1=((rhorang)*Vel1*Length1)/Viscosity1
    plot(Vel1,ReNo1,'k')     







