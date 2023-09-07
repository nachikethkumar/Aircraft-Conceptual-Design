% Rostom approach to find the cruise and loiter weight fractions

%Rcruise=375*(eta/cp)*(LD)*ln(wi-1/wi)
% in miles
% 250km=155.343
% 200km=124.274
% 50 km=31.0686
Rcruise= 155.343 %in miles
cp=0.5
eta=0.82
LD=11
Wibywi1=exp((Rcruise*cp)/(375*eta*LD))

