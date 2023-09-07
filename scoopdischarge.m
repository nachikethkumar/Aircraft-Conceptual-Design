% scooping water discharge 
velocity_of_Airplane= 36 %m/s
%Dimension of Scoop
% for rectangle= b=0.20 h=0.20
% for Circle= r=10
Area_of_Scoop= linspace(0,0.5,10000)
Discharge=(velocity_of_Airplane)*(Area_of_Scoop)
plot(Area_of_Scoop,Discharge,'b')
title('Variation of Discharge according to Area of scoop')
xlabel('Area of Scoop (m^2)')
ylabel('Discharge, (m^3/s)')
hold on
Area_of_Scoop=0.333/36.111


