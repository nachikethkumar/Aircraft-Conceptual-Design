                                
                                %%   %%%%%%      Take off CONSTRAINT       %%%%% %%
                         %%%%Takeoff in land%%%%%
%TAke off parameter
%W/S=TOP*sigma*Clto*(HP/W)
%Clmax=(1.2-1.8)
%Clmax=1.5
Clto= 2.26%Clmax/1.21
TOP=460
sigma=0.74214
WbyS=linspace(0,600,1000)
WbySlb=linspace(0,122,1000) % lb/ft2 %150-500kg/m2 WbyS=linspace(0,5000,1000)in kg/m2 

HPbyWlb=WbySlb/(TOP*sigma*Clto)
%power loading will be in hp/lb unit
%Wing loading will be in lb/ft2 unit

%Converting lb power loading to Watt/kg
HPbyWkg=HPbyWlb*1643.99

%COnverting lb wing loading to kg/m2
WbySkg=WbySlb*4.882

%HPbyWkgm2=HPbyW/9.81

plot(WbySkg,HPbyWkg,'b')
xlabel('Wing Loading (kg/m^2)')
ylabel('Power Loading (Watt/kg)')
hold on 

                          %%%%Takeoff on water
%TAke off parameter
%W/S=TOP*sigma*Clto*(HP/W)
%Clmax=(1.2-1.8)
%Clmax=1.5
Clto= 2.26%Clmax/1.21
TOP1=340
sigma=0.74214
WbyS=linspace(0,600,1000)
WbySlb1=linspace(0,122,1000) % lb/ft2 %150-500kg/m2 WbyS=linspace(0,5000,1000)in kg/m2 

HPbyWlb1=WbySlb1/(TOP1*sigma*Clto)
%power loading will be in hp/lb unit
%Wing loading will be in lb/ft2 unit

%Converting lb power loading to Watt/kg
HPbyWkg1=HPbyWlb1*1643.99

%COnverting lb wing loading to kg/m2
WbySkg1=WbySlb1*4.882

%HPbyWkgm2=HPbyW/9.81

plot(WbySkg1,HPbyWkg1,'r')
xlabel('Wing Loading (kg/m^2)')
ylabel('Power Loading (Watt/kg)')
hold on 

%{
%Clmax1=1.5
Clto1= 2.26  %Clmax1/1.21
TOP1=350
sigma1=0.74214
WbyS1=linspace(0,1024,1000) %150-500kg/m2
HPbyW1=WbyS1/(TOP1*sigma1*Clto1)
HPbyW1kgm2=HPbyW1/9.81
plot(WbyS1,HPbyW1kgm2,'r')
xlabel('Wing Loading (kg/m^2)')
ylabel('Power Loading (Watt/kg)')
hold on
%}

                                %%  %%%%%%   Cruise Speed CONSTRAINT   %%%%%%% %%
rho= 0.6597 %kg/m^32
V=139.88
AR=8
q=0.5*rho*(V^2)
k=1/pi*AR*e1
WbyScruisespeed=linspace(0,600,1000)
Cdmin=0.045                                      %0.040-0.055
%Constraint for desired cruise Airspeed at no payload
%T/W=q*Cdmin*(1/(W/S))+k*(1/q)*(W/S)
TbyWcruisespeed=(q*Cdmin).*(1./(WbyScruisespeed))+(k*(1/q).*(WbyScruisespeed))
plot(WbyScruisespeed,TbyWcruisespeed,'c')
xlabel('Wing Loading (kg/m^2)')
ylabel('Power Loading (Watt/kg)')
hold on

rhofull= 0.6597 %kg/m^3
Vfull=69.44
AR=8
qfull=0.5*rhofull*Vfull^2
kfull=1/pi*AR*e
WbyS=linspace(0,600,1000)
Cdmin=0.045

%Constraint for desired cruise Airspeed at full payload
%T/W=q*Cdmin*(1/(W/S))+k*(1/q)*(W/S)
TbyWfull=qfull*Cdmin*(1./(WbyS))+kfull*(1/qfull).*(WbyS)
plot(WbyS,TbyWfull,'.')
xlabel('Wing Loading (kg/m^2)')
ylabel('Power Loading (Watt/kg)')
hold on

                       %%    %%%%%% Service ceiling CONSTRAINT   %%%%%%% %%
%WbySlb=linspace(0,102.4,1000)
%VyKCAS=69.952+1.3402.*(WbySlb)
%Vympersec=VyKCAS/1.944

%TbyWceiling=(1.667./Vympersec)+q*Cdmin*(1./(WbyS))+k*(1/q).*(WbyS)
%plot(WbyS,TbyWceiling,'--')
%xlabel('Wing Loading (kg/m^2)')
%ylabel('Power Loading (Watt/kg)')
V=69.44
LbyD=10.5
TbyWceil=(-1/(LbyD))./((sqrt((2/q).*WbyS*sqrt(k/(3*Cdmin))))-V)+(4*sqrt((k*Cdmin)/3))
plot(WbyS,TbyWceil,'k')
hold on 

                     %%   %%%%%%% Landing Distance CONSTRAINT  1 %%%%%%%%%%  %%

%landing in land

Landingdist=1000
Clmax=2.5      %1.8-3.4
sigmalanding=0.74214
LTbyWlanding=(20*(WbyS))/(sigmalanding*Landingdist*Clmax)
plot(WbyS,LTbyWlanding,'g')

%landing on water
WLandingdist=1500
      %1.8-3.4
sigmalanding=0.74214
WTbyWlanding=(20*(WbyS))/(sigmalanding*WLandingdist*Clmax)
plot(WbyS,WTbyWlanding,'m')
Clmax=2.5

                       %%    %%%%% Stall Speed CONSTRAINT %%%%%% %%
rholanding=0.90912
Vsta11Landing=41.38
qstall=0.5*rholanding*(Vsta11Landing)^2
Clmax=2.5
WbySstall=Clmax*qstall
WbySstallkg=WbySstall/9.81
point= WbySstallkg*ones(1,length(HPbyWkg));
       plot(point,HPbyWkg,'.')
title('CONSTARINT DIAGRAM')      
hold on

                      %%  %%%%%%% Landing Distance CONSTRAINT  2 %%%%%%%%%% %%
%%%%landing at land surface
sigmalanding=0.74214
Sa=183 %m for general aviation type power off approach
Clmax=2.5
Slanding=1000 % meters
%Slanding=5*(WbyS)*(1/(sigmalanding*Clmax))+Sa
WbySlandland=(((Slanding-Sa)/5)*(sigmalanding*Clmax))
pointlandland= WbySlandland*ones(1,length(HPbyWkg));
       plot(pointlandland,HPbyWkg,'-.')
hold on
%%%%landing at Water surface
sigmalanding=0.74214
Sa=183 %m for general aviation type power off approach
Clmax=2.5
Slanding=1500 % meters
%Slanding=5*(WbyS)*(1/(sigmalanding*Clmax))+Sa
WbySlandwater=((Slanding-Sa)/5)*(sigmalanding*Clmax)
pointlandwater= WbySlandwater*ones(1,length(HPbyWkg));
       plot(pointlandwater,HPbyWkg,':')
       
legend('Take off dist from land','Takeoff dist from Water','Dash Speed no payload','Dash Speed full payload','ceiling','Landing on land','Landing on water','Stall speed','land on land', 'land on water')


%Vstall as per the faa regulation 24.131 meterpersec
                   
                          %%  %%%%%%%% ROUGH WORK %%%%% %%
%{
W1=0.970             %Takeoff Engine startup
W2=0.985             %climb
W3=WiWi11            %cruise1
W4=WiWi1loiter1      %loiter1
W5=0.996             %scoop landing
W5Wgross=W1*W2*W3*W4*W5
WfuelWgross5=1.06*(1-(W5Wgross))
Wfuel5=WfuelWgross5*25076


%LAnding Wing Loading
%W/S=1/2*rholandingaltitude*Clmaxlanding*(vstalllanding)^2
%rholandingaltitude=0.909 


%%%%%Range%%%%%
%R=(25*Wf/Ct)*((WbyS/sigmacruise)^0.5)*(((e*AR)/(Cd0cruis)^3)^0.25)
sigmacruise=0.5385
Cd0cruis=0.034
AR=8.5
Ct=8.448e-5
Wf=6.0332e+03
R=1000000

WbyS=sigmacruise*((Ct*R/25*Wf)*((Cd0cruis)^3/(e*AR))^0.25)^2
plot(WbyS,,'.')
%}

