%obtained wing loading from the constraint diagram= 198.354 kg/m^2
%Power loading= 117.3 watt/kg
Wing_loading=203.5 %kg/m^2
Wing_area=CalculatedWgross/Wing_loading

Power_Loading=120.3 %watt/kg
Power_Required=Power_Loading*CalculatedWgross


%HPbyWlb=WbySlb/(TOP*sigma*Clto)
Clto= 2.26%Clmax/1.21
TOP=460
sigma=0.7534
HPbyWtakeoff=0.0731
WbyStakeoff=TOP*sigma*Clto*(HPbyWtakeoff)
%power loading will be in hp/lb unit
%Wing loading will be in lb/ft2 unit

%Converting lb power loading to Watt/kg
HPbyWkg=HPbyWtakeoff*1643.99

%COnverting lb wing loading to kg/m2
WbySkg=WbyStakeoff*4.882

Aspect_ratio=8;
Area=Wing_area;
Wing_Span=sqrt(Aspect_ratio*Area)
Wing_Chord=Area/Wing_Span
WING_AREA=Wing_area

% calculating Clmax using Wing loading during full payload
V_at_Cruise_fullpayload=69.44;
rho_at_cruise=0.64258;
Wing_loading_cruise=Wing_loading*9.81;
Cl_for_Airfoil_Full_payload=(2*Wing_loading_cruise)/(rho_at_cruise*(V_at_Cruise_fullpayload^2))

V_at_Cruise_nopayload=138.88;
rho_at_cruise=0.64258;
Wing_loading_cruise=Wing_loading*9.81;
Cl_for_Airfoil_nopayload=(2*Wing_loading_cruise)/(rho_at_cruise*(V_at_Cruise_nopayload^2))







