%{

Payload	                                5000 kg of water or
                                        4500 kg of liquid fire retardant under IRA sea level
Flight & Operational Crew members	    2
Radius of Operation	                    200 km from the water body / Airport
Endurance                               30 minutes at the fire zone
No. of passes without re-fueling        2
Time to scoop in each pass              5000 kg in 15 seconds (for water) or
                                        4500 kg in 4 minutes (for liquid fire retardant)
Cruise speed                            250 km/hr with full payload
Altitude of dropping payload            100 m AGL
Floatation Characteristics              1.5 km on land or 1 km on water
Moderate Sea State                      1.25 m - 2.5 m wave height
Service ceiling                         6 km
Take-off & Land at full payload	Altitude of 3 km AMSL under IRA conditions
Maximum Speed                           500 km/hr without payload



Given:
Wp=(5000:4500)          %Kg
   (49003.95:44130.925) %Newton

Wc=(186)    %Kg
   (1824)   % Newton
   
Vc=250      %km/hr
  =69.44    %m/s
  =0.202462 %M

Vmax=500        %km/hr
    =138.889    %m/s
    =0.404924   %M
    
Takeoff&landing dist= 1.5% km in land
                    = 1% km in Water

Ceiling= 6 %Km

Maximum range=1600 %kms 1st and 2nd pass 800 km each

1 Mission = 2 passes of water

%}
---------------------------------------------------------------------------
%{
Initial Sizing of  conceptual design design 
 Wo=Gross Weight
 Wc=Crew Weight
 Wp=Payload Weight
 Wf=Fuel weight
 We=Empty Weight

Wgross=(Wcrew+Wpayload)/(1-(Wfuel/Wgross)-(Wempty/Wgross))
%}
% Estimating the Empty Weight Fraction
A=                                               % A=  1.05 for Flying boats constant  ,A=0.88 for sail planes
C=                                               % C= -0.05 for Flying Boats constant  ,C=-0.05 for sail planes
K=                                               % K= 1 for fixed sweep, K=1.04 for Variable sweep
Wgross=                                          % Estimate using initial sketch of the conceptual design
Wempty/Wgross= A*((Wgross)^C)*K                     

% Estimating the mission fuel fraction
% MISSION PROFILE
%CASE 1 Water scooping, Number of stages= 
0=Engine Start 
1= Takeoff
2=Climb
3=Cruise
4=loiter
5=Scoop(Landing)
6=Climb
7=cruise
8=Loiter  
9=drop  
10=climb  
11=cruise  
12=Landing   
13=Shutdown

         
%CASE 2 Fire Retardent, Number of stages=
0=Engine Start  
1=Takeoff  
2=climb  
3=cruise  
4=loiter  
5=Water drop  
6=climb  
7=cruise  
8=Landing  
9=Tax in  


%CASE 1
Wi/Wi-1
Wi/Wgross= (W13/W12)+(W12/W11)+(W11/W10)+(W10/W9)+(W9/W8)+(W8/W7)+(W7/W6)+(W6/W5)+(W5/W4)+(W4/W3)+(W3/W2)+(W2/W1)+(W1/Wgross)

% Segment calulation

Takeoff&Warmup = 0.970  % Historical data 
Climbing= 0.985         % Historical Data
Landing= 0.995          % Historical Data
Desending= neglect

Cruise % For cruise use breguets range equation  (R=(V/C)(L/D)ln(Wi-1/wi))
(Wi/Wi-1)=exp(-R*C/(V*(L/D)))
(L/D)cruise=(L/D)max    % for Propeller a/c
C(TSFC)cruise=  Piston propfixed=0.068 ,Piston prop variable=0.068 ,Turboprop=0.085 %mg/W-s


Loiter % For Loiter use Endurance Equation       (E=(1/C)(L/D)ln(Wi-1/wi))
(Wi/Wi-1)=exp(-E*C/(L/D))
(L/D)loiter=0.866(L/D)max % for Propeller a/c
C(TSFC)loiter=  Piston propfixed=0.085 ,Piston prop variable=0.085 ,Turboprop=0.101 %mg/W-s

% Estimating (L/D)max ratio
ARwetted=(AR/(Swet/Sref))
(L/D)max=Kld(sqrt(ARwetted))=Kld(sqrt(AR/(Swet/Sref)))_
% Kld=11 for retractable prop aircraft, 9=for non retractable prp, 13=for high aspect ratio aircraft 15=sailplanes
% (L/D)max range(10,15,20,22)
%Wetted Area ratio- Beech duches=5, cessna skylane RG=4

%Fuel fraction estimation
Wfuel used= Wgross-W final segment
(Wf/Wo)=1-(Wi/Wo)





