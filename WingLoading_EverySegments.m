                                             %%% WIng loading in every Segments %%%
                                             
                                             
                                        %% %% WIng Loading during Takeoff on land
Clto= 2.26;%Clmax/1.21
TOP=460; % obtained from the Graph mentioned in Raymers textbook depends on the landing distance
sigma=0.7534239;

%Converting lb power loading to Watt/kg
HPbyWkg=120.3;
HPbyW_nopayloadlb=HPbyWkg/1643.99;

WbySTakeoff_nopayloadlb=TOP*sigma*Clto*(HPbyW_nopayloadlb);

%COnverting lb wing loading to kg/m2
WbySTakeoff_on_land=WbySTakeoff_nopayloadlb*4.882

                                          %% %% WIng Loading during Takeoff on water
Clto= 2.26;%Clmax/1.21
TOP=340; % obtained from the Graph mentioned in Raymers textbook depends on the landing distance
sigma=0.7534239;

%Converting lb power loading to Watt/kg
HPbyWkg=120.3;
HPbyW_nopayloadlb=HPbyWkg/1643.99;

WbySTakeoff_nopayloadlb=TOP*sigma*Clto*(HPbyW_nopayloadlb);

%COnverting lb wing loading to kg/m2
WbySTakeoff_on_water=WbySTakeoff_nopayloadlb*4.882

                                           %% %%WIng Loading during cruise no payload
rho= 0.642580; %kg/m^32
Vnopay=138.88;
q=0.5*rho*(Vnopay^2);
AR=8;
e_nopay=0.7726; 
Cdo_no_payload=0.0143;
WbyScruise_nopayload=(q*sqrt(pi*AR*e_nopay*Cdo_no_payload))/9.81

                                            %% %%WIng Loading during cruise with payload
rho= 0.642580; %kg/m^32
Vpay=69.44;
q=0.5*rho*(Vpay^2);
AR=8;
e_pay=0.7733; 
Cdo_payload=0.0161;
WbyScruise_payload=(q*sqrt(pi*AR*e_pay*Cdo_payload))/9.81

                                             %% %%WIng Loading during loiter no payload
rho= 0.642580; %kg/m^32
Vnopayloiter=138.88;
q=0.5*rho*(Vnopayloiter^2);
AR=8;
e_nopay=0.7726;   %0.7733 
Cdo_nopayload=0.0143;
WbySloiter_nopayload=(q*sqrt(3*pi*AR*e_nopay*Cdo_nopayload))/9.81

                                            %% %%WIng Loading during loiter with payload
rho= 0.642580; %kg/m^32
Vpayloiter=50;
q=0.5*rho*(Vpayloiter^2);
AR=8;
e_pay=0.7733;   %0.7733 
Cdo_payload=0.0161;
WbySloiter_payload=(q*sqrt(3*pi*AR*e_pay*Cdo_payload))/9.81

                                              %% %%WIng Loading during landing on land
sigmalanding=0.7534239;
Sa=183; %m for general aviation type power off approach
Clmax=2.6;
Slanding=1000; % meters
%Slanding=5*(WbyS)*(1/(sigmalanding*Clmax))+Sa
WbySlandland=(((Slanding-Sa)/5)*(sigmalanding*Clmax))

                                             %% %%WIng Loading during landing on water
sigmalanding=0.7534239;
Sa=183; %m for general aviation type power off approach
Clmax=2.6;
Slanding_water=1500; % meters
%Slanding=5*(WbyS)*(1/(sigmalanding*Clmax))+Sa
WbySlandwater=(((Slanding_water-Sa)/5)*(sigmalanding*Clmax))

