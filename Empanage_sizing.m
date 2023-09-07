%50% and vertical tail and horizontal tail areas are calculated by using equation
Cvt=0.06;
bw=33.19;
Sw=137.73;
Lvt=11.95;
Svt = (Cvt*bw*Sw)/Lvt;
Area_of_Verticle_tail=Svt
%where Cvt-chord of vertical tail,
       %bw=wing aera
       %Cw=wing mean chord
       %Lvt=distance from the tail quarter quard 
       %Sw=wing area
Cht=0.7;
Cw=4.149;
Sw=137.73;
Lht=11.95;
Sht = (Cht*Cw*Sw)/Lht;
Area_of_Horizontal_tail=Sht
%where Cht-chord of horizontal tail
       %Cw-wing mean chord
       %Sw-wing area
       %Lht-distance from the tail quarter quard
     
       
       %Taper ratio horizontal tail= 0.5
       %Taper ratio verticle tail= 0.5
%Vertical tail span can be calculated since area and aspect ratio are known now:
ARvt=1.6;  %ArHt=4
Bvt=sqrt(Svt*ARvt);
span_of_verticle_tail=Bvt
%Svt is known from above equation
%ARvt is the aspect ratio
ARht=4;  %ArHt=4
Bht=sqrt(Sht*ARht);
span_of_horizontal_tail=Bht



%Then, root chords and tip chords of vertical and horizontal tail are calculated 
%Verticle
Lambdavt=0.5;
Crvt = (2*Svt)/(Bvt+(Bvt*Lambdavt));
root_chord_of_Vertical_Tail=Crvt
Ctvt= Lambdavt*Crvt;
Tip_chord_of_Vertical_Tail=Ctvt

%horizontal
Lambdaht=1;
Crht = (2*Sht)/(Bht+(Bht*Lambdaht));
root_chord_of_Horizontal_Tail=Crht
Ctht= Lambdaht*Crht;
Tip_chord_of_Horizontal_Tail=Ctht


%So, mean aerodynamic chord of vertical and horizontal tail can be calculated by using the above root 
%chord lengths 

%vertical tail
mCvt=(2/3)*Crvt*((1+Lambdavt+(Lambdavt^2))/(1+Lambdavt));
mean_aerodynamic_chord_vertical_tail=mCvt
%Horizontal tail
mCht=(2/3)*Crht*((1+Lambdaht+(Lambdaht^2))/(1+Lambdaht));
mean_aerodynamic_chord_horizontal_tail=mCht


%bHT=2*Sht/CrHT+(CrHT+LambdaHT)

%Aspect ratio of the horizontal can be calculated now:
%ARht=b^2HT/Sht

%Also, leading edge sweep angle for vertical and horizontal tail is calculated as follows
%LE = 180/pi*tan^-1(Cr-Ct/b)
%where LE= leading edge sweep angle

%verticle tail
LEvt = (180/pi)*(atan((Crvt-Ctvt)/Bvt));
verticleTail_leading_edge_sweep=LEvt
