%Figuring out the span efficiency factor 
%e=((1+0.12*M^6)(1+((0.142+f(lamdaw)*AR*(10*(t/c)w)^0.33)/cos(quartersweep)^2)+((0.1(3Ne+1))/((4+Aw)^0.8)))^-1
%DATA

M=0.223      ;   % Cruise Mach Number      with payload M=0.202462,0.223 Without payload M=0.404924,0.446
AR=8   ;          % Wing Aspect Ratio
A25w=0  ;            %Wing quarter chord sweep
tbycw=0.159 ;             % Wing Thickness Ratio(t/c)w in percentage to decimal
Ne=2  ;              % Number of Engines        
lambdaw=1;        % Wing Taper Ratio
%f(lambdaw)= % Factor based on lambdaw
flambdaw=0.005*(1+1.15*(lambdaw-0.6)^2);

M=0.223 %With payload
A=(1+0.12*M^6);
B=((0.142+flambdaw*AR*(10*tbycw)^0.33)/((cos(A25w))^2));
C=(0.1*(3*Ne+1))/((4+AR)^0.8);

e=(A*(1+B+C))^-1

M1=0.446; %Without payload
A1=(1+0.12*M1^6);
B=((0.142+flambdaw*AR*(10*tbycw)^0.33)/((cos(A25w))^2));
C=(0.1*(3*Ne+1))/((4+AR)^0.8);

e1=(A1*(1+B+C))^-1

