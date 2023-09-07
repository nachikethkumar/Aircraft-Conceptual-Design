% Relation between range and aspect Ratio
%DATA
%{
Sigmacruise=0.556298156
WFUEL=5000
%Ct=8.448e-5
Ct=Ct_TSFC
WingLOADINGcruise=200
CD0=0.045
AR=8.5
e=0.7771
R=((25*WFUEL)/Ct)*(((WingLOADINGcruise)/Sigmacruise)^0.5)*(((e*AR)/((CD0)^3))^0.25)
Range_in_Km=R
%}

Velocity=500; % in km per hour
efficincyofprop=0.82;
%Cbhp=0.085;
%Cbhp=8.448e-5
Cbhp=0.30415; % in liters per hour;
Ct_TSFC=Cbhp*(Velocity/(367.1*efficincyofprop));
%C5=8.448e-5
LbyD=13;
Winitial_by_Wfinal=W20Wgross;
RANGE=(Velocity/Ct_TSFC)*(LbyD)*log(1/(Winitial_by_Wfinal))

%Endurance Equation (E=(1/C)(L/D)ln(Wi-1/wi))
Velocity=250; % in km per hour
efficincyofproploiter=0.77;
%Cbhp=0.085;
%Cbhp=8.448e-5
Cbhploiter=0.36498; % in liters per hour;
Ct_TSFCloiter=Cbhploiter*(Velocity/(367.1*efficincyofproploiter));
%C5=8.448e-5
LbyDloiter=13;
Endurance=(1/Ct_TSFCloiter)*(LbyDloiter)*log(1/Winitial_by_Wfinal)
