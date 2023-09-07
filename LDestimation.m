%{
% Estimating (L/D)max ratio
ARwetted=(AR/(Swet/Sref))
(L/D)max=Kld(sqrt(ARwetted))=Kld(sqrt(AR/(Swet/Sref)))_
% Kld=11 for retractable prop aircraft, 9=for non retractable prp, 13=for high aspect ratio aircraft 15=sailplanes
% (L/D)max range(10,15,20,22)
%Wetted Area ratio- Beech duches=5, cessna skylane RG=4

r=(4,5)  %Swet/Sref
AR=linspace(7,10,20)
Kld=(11,9,13,15)
(L/D)max=Kld*(sqrt(AR/(r)))_

%}

%%%% for value of K=9
r1=4  %Swet/Sref
A1=linspace(7,10,20)
p1=A1/r1
K1=9
LDmax1 = K1*sqrt(p1)

r2=5  %Swet/Sref
A2=linspace(7,10,20)
p2=A2/r2
K2=9
LDmax2 = K2*sqrt(p2)

r3=6  %Swet/Sref
A3=linspace(7,10,20)
p3=A3/r3
K3=9
LDmax3 = K3*sqrt(p3)

%%%% for value of K=11
r111=4  %Swet/Sref
A111=linspace(7,10,20)
p111=A111/r111
K111=11
LDmax111 = K111*sqrt(p111)

r222=5  %Swet/Sref
A222=linspace(7,10,20)
p222=A222/r222
K222=11
LDmax222 = K222*sqrt(p222)

r333=6  %Swet/Sref
A333=linspace(7,10,20)
p333=A333/r333
K333=11
LDmax333 = K333*sqrt(p333)

%%%% for value of K=15
r11=4  %Swet/Sref
A11=linspace(7,10,20)
p11=A11/r11
K11=15
LDmax11 = K11*sqrt(p11)

r22=5  %Swet/Sref
A22=linspace(7,10,20)
p22=A22/r22
K22=15
LDmax22 = K22*sqrt(p22)

r33=6  %Swet/Sref
A33=linspace(7,10,20)
p33=A33/r33
K33=15
LDmax33 = K33*sqrt(p33)



plot(p1,LDmax1,'o',p2,LDmax2,'+',p3,LDmax3,'*')
hold on
plot(p11,LDmax11,'r',p22,LDmax22,'g',p33,LDmax33,'b')
hold on
plot(p111,LDmax111,'c',p222,LDmax222,'m',p333,LDmax333,'k')

ylabel('(L/D)max')
xlabel('Wetted Aspect Ratio')
title('(L/D)max vs wetted Aspect ratio for wetted area= 4 5 6')
legend('wetted area 4, K=9','wetted area 5, K=9','wetted area 6, K=9','wetted area 4, K=11','wetted area 5, K=11','wetted area 6, K=11','wetted area 4, K=15','wetted area 5, K=15','wetted area 6, K=15')


%ylabel('LDmax')
%xlabel('Wetted Aspect Ratio')
%title('LDmax vs wetted Aspect ratio for wetted area= 5')