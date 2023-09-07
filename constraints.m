%{
%q=1/2*rho*V^2
q=0.5*rho*V^2

k=1/pi*AR*e

%Constraint for desired Take off Distance
%T/W=((Vlof)^2/(2*g*Sg))+((q*Cdto)/(W/S))+myu*(1-(q*Clto/(W/S)))
TbyW=((Vlof)^2/(2*g*Sg))+((q*Cdto)/(WbyS))+myu*(1-(q*Clto/(WbyS)))

CL TO ¼Lift coefficient during T-O run
CD TO ¼Drag coefficient during T-O run
q ¼Dynamic pressure at VLOF= ffiffiffi
2
p and alt
CLmax ¼Max lift coefficient in T-O config.
SG ¼Ground run (ft or m)
μ ¼Ground friction constant (typ. 0.04)
g ¼Acceleration due to gravity (ft/s2 or m/s2
)
%}



q=0.5*rho*V^2
k=1/pi*AR*e
WbyS=linspace(1000,5000,1000)
Cdmin=0.045                                      %0.040-0.055
%Constraint for desired cruise Airspeed
%T/W=q*Cdmin*(1/(W/S))+k*(1/q)*(W/S)
TbyW=q*Cdmin*(1/(WbyS))+k*(1/q)*(WbyS)

%{
% Constraint for desired service Ceiling for propeller Aircraft
%T/W=((Vv)/(sqrt((2/q)*(W/S)*sqrt(k/(3*Cdmin)))))+4*sqrt((k*Cdmin)/3)
TbyW=((Vv)/(sqrt((2/q)*(WbyS)*sqrt(k/(3*Cdmin)))))+4*sqrt((k*Cdmin)/3)

rho= 0.6597 %kg/m^3
%}
WbySlb=linspace(0,102.4,100)
VyKCAS=69.952+1.3402*(WbySlb)
Vympersec=VyKCAS/1.944

TbyWceiling=(1.667/Vympersec)+q*Cdmin*(1/(WbyS))+k*(1/q)*(WbyS)

TbyW=((V*(TbyW-1/LbyD)))/(sqrt((2/q)*(WbyS)*sqrt(k/(3*Cdmin)))))+4*sqrt((k*Cdmin)/3)

