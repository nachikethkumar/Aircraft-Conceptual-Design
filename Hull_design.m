% deigning HULL

%Finding the deadrise Angle
Vstall=41 %m/sec
Alpha_Deadrise=(1.1185*Vstall)-10

%calculating the static beam loading coefficient
load=9000*9.81 %61793.367 %28029%52000
Density_of_water=1000 %64 %1000%64
Beam_length=5.2 %17.02 %5.2 %8.75
static_beam_coefficient=load/(Density_of_water*(Beam_length^3))

%Calculating the fore boady length
K=0.0675
Length_Forebody=Beam_length*(sqrt(static_beam_coefficient/K))

%finding Keel length
Keel_length=1.7*Beam_length

%Finding bow height
bow_height=0.8*Beam_length

%After body length
After_body_length=2.5*((static_beam_coefficient)^0.33)*Beam_length
