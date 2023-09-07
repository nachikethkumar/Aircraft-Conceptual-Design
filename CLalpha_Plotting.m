% finding the clmax of the flight 
%variables 
M=0.446 %linspace(0.1,1,10);
beta = sqrt(1-M.^2)
eta= 0.95;
d= 5.2788; b=33.19;
F= 1.07*(1+d/b)^2;
sweepmax= 0;
AR= 8;
S_exposed=	747.95717 %m2
S_ref=899.092097 %m2
Clalphaslop=((2*pi*AR)./(2+sqrt(((4+AR^2*beta.^2)/eta^2).*(1+((tan(sweepmax)^2))./beta.^2)))).*(S_exposed/S_ref)*F
plot(M,Clalphaslop,'h-')
xlabel('Mach Number')
ylabel('Lift curve slope')
title('Lift curve slope variation on mach mumber') 