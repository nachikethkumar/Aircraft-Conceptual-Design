=`%Parasite (Zero-Lift) Drag
%Equivalent Skin-Friction Method
%Cd0=Cfe(Swet/Sref)
% Cfe value of Prop seaplane= 0.0065 (Equivalent skin friction coefficient)
%Swet/Sref values for Turboprop 5 - 7
Cfe=0.0065
SwetSref=5.5
Cd0=Cfe*(SwetSref)
length=4.2
ReNo=linspace(0,36201900,2000)
k_factor=0.152*10^-5  %0.634*(10^-5)
Rcutoff = 38.21*(length/k_factor)^1.053
%Smooth paint= 0.634 x l0^-5     k value for meters( Roughness coefficents
%Polished sheet metal= 0.152 x 10^-5
CfLaminar=1.328./sqrt(ReNo);
plot(ReNo,CfLaminar,'b')
xlabel('Re Number')
ylabel('Cf coefficient of Skin Friction')
hold on
%If the calculated cutoff Reynolds number is lower
%than the actual Reynolds number, then the roughness will increase the
%drag, so the cutoff Reynolds number should be used in Eq. (12.27).

%Cruise Mach Number with payload M=0.202462,0.223 Without payload M=0.404924,0.446
M1=0.223;
CfeTurbulanceM1=0.455./(((log10(ReNo)).^2.58)*((1+0.144*M1^2)^0.65)); %Eq. (12.27)

plot(ReNo,CfeTurbulanceM1,'r')
xlabel('Re Number')
ylabel('Cf coefficient of Skin Friction')
hold on

M2=0.446;%Without payload M=0.404924,0.446
CfeTurbulanceM2=0.455./(((log10(ReNo)).^2.58)*((1+0.144*M2^2)^0.65)); %Eq. (12.27)
plot(ReNo,CfeTurbulanceM2,'c')
title('Reynolds Number vs Skin friction drag')
xlabel('Re Number')
ylabel('Cf coefficient of Skin Friction')
legend('Cfe during laminar','Cfe during turbulance at M=0.223','Cfe during turbulance at M=0.446')

figure;

Cd01=CfeTurbulanceM1*(SwetSref)
Cd02=CfeTurbulanceM2*(SwetSref)
plot(CfeTurbulanceM1,Cd01,'c',CfeTurbulanceM2,Cd02,'m')
title('Skin friction drag vs Parasite drag')
xlabel('CfeTurbulance')
ylabel('Cd0 coefficient of parasite drag')
legend('Cd0 coefficient of parasite drag at M=0.223','Cd0 coefficient of parasite drag at M=0.446')

M1pay=0.223
ReNo_pay=11093828.24
CfeTurbulanceM1point=0.455./(((log10(ReNo_pay)).^2.58)*((1+0.144*M1pay^2)^0.65)) %Eq. (12.27)

M2nopay=0.446
ReNo_nopay=22187656.49
CfeTurbulanceM2point=0.455./(((log10(ReNo_nopay)).^2.58)*((1+0.144*M2nopay^2)^0.65)) %Eq. (12.27)

Cd01point=CfeTurbulanceM1point*(SwetSref)
Cd02point=CfeTurbulanceM2point*(SwetSref)




