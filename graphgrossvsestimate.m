% Plotting estimated and obtained gross weight with respect to empty weight
% fraction and finding the intersection point 
WfuelWgross=1.06*(1-W20Wgross)

Wcrew=185;              %Crew Weight
Wpayload=4500;          %Payload Weight

eWgross=linspace(20000,40000,20000)
WemptyWgross= 1.05*((eWgross).^-0.05)*1;

R=[]
for i=1:length(WemptyWgross)
    A =1-(WfuelWgross)-(WemptyWgross(i));
    R(i)=A;
end
disp(R);

WWgross=[]
for i=1:length(R)
    Wgross=(Wcrew+Wpayload)/R(i);
    WWgross(i)=Wgross;
end
disp(WWgross);

plot(WemptyWgross,eWgross,'r')
hold on
plot(WemptyWgross,WWgross,'g')
hold on

for x=1:length(WemptyWgross)
    ele= eWgross(x);
    a=uint64(ele);
    ele1 = WWgross(x);
    b=uint64(ele1);
        if a==b
            fprintf("found %f  %f\n",a,b)
            val = ele*ones(1,length(WemptyWgross));
            %plot(WemptyWgross,val,'-')
            break
        else
            fprintf("not found %f  %f\n",a,b)
        end
end
title('Empty Weight fraction vs Gross Weight')
ylabel('Wgross, Kilograms(Kg)')
xlabel('EmptyWeight fraction')
legend('Estimated Weight','Obtained Weight')

% final Initial sizing values
CalculatedWgross=ele
CWemptyWgross= 1.05*((ele).^-0.05)*1
CalculatedWempty=CWemptyWgross*ele
CalculatedWfuel= WfuelWgross*ele
Wpayload=5000
Wcrew=185
Weightwithnopayload=CalculatedWempty+CalculatedWfuel+Wcrew
