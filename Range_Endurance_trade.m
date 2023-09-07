Velocity=500; % in km per hour
efficincyofprop=0.82;
%Cbhp=0.085;
%Cbhp=8.448e-5
Cbhp=linspace(0.20415,0.42581,100); % in liters per hour;
Ct_TSFC=(Velocity/(367.1*efficincyofprop)).*Cbhp;
%C5=8.448e-5
LbyD=13;
Winitial_by_Wfinal=W20Wgross;
RANGE=(Velocity./Ct_TSFC).*(LbyD)*log(1/(Winitial_by_Wfinal))
plot(Ct_TSFC,RANGE,'c')
xlabel('TSFC (l/hr)')
ylabel('Range (Km)')
title('TSFC vs Range')
figure;

%Endurance Equation (E=(1/C)(L/D)ln(Wi-1/wi))
Velocity=linspace(40,500,500); % in km per hour
efficincyofproploiter=0.77;
%Cbhp=0.085;
%Cbhp=8.448e-5
Cbhploiter=0.36498; % in liters per hour;
Ct_TSFCloiter=Cbhploiter*(Velocity./(367.1*efficincyofproploiter));
%C5=8.448e-5
LbyDloiter=13;
Endurance=(1./Ct_TSFCloiter)*(LbyDloiter)*log(1/Winitial_by_Wfinal)
plot(Velocity,Endurance,'m')
xlabel('Velocity(Kmph)')
ylabel('Endurance (Hr)')
title('Velocity vs Endurance')