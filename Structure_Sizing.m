%Calculating the fuselage Length
%Fuselage_length=a*(W0^C) W0 in kg
%a=0.439     C=0.40 in meters
a=0.439
C=0.40
CalculatedWgross=28029
Fuselage_length=a*(CalculatedWgross^C)

%Proper fuselage layout includes definition of the fuselage fineness ratio.
%This is the ratio between the fuselage length and its maximum diameter.

%If the fuselage cross section is not a circle, an equivalent diameter is calculated from the cross-sectional area.
%optimum fineness ratio for subsonic aircraft is somewhere between 6 and 8
%fineness_ratio=Fuselage_length/Maximum_diameter
fineness_ratio=6
Maximum_diameter=Fuselage_length/fineness_ratio


