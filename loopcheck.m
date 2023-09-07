%{
for WemptyWgross=WemptyWgross(1,:)
    A =1-WfuelWgross-WemptyWgross
    A(WemptyWgross)=A
end


a=10
b=10
for i=1:10
    s=a+b;
    s(i)=s;
end
 disp(s)

 %}

% CAlculation and ploting of thrust required

Totalweightwithpayload= 32000
LDMAX=linspace(10,18,100)
TRUSTreq1=[]
for i=1:length(LDMAX)
    TrustRequired1=Totalweightwithpayload/(LDMAX(i))
    TRUSTreq1(i)=TrustRequired1
end
disp(TRUSTreq1)

plot(LDMAX,TRUSTreq1,'*')
xlabel('LDMAX')
ylabel('THRUSTreqired (Newton)')
hold on

Totalweightwithoutpayload= 27000
LDMAX=linspace(10,18,100)
TRUSTreq2=[]
for i=1:length(LDMAX)
    TrustRequired2=Totalweightwithoutpayload/(LDMAX(i))
    TRUSTreq2(i)=TrustRequired2
end
disp(TRUSTreq2)

plot(LDMAX,TRUSTreq2,'+')
xlabel('LDMAX')
ylabel('THRUSTreqired (Newton)')
legend('Trust required at full payload','Trust required at empty payload')
