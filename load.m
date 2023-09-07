%Load Factor
%n=Lift/Weight 
myu=linspace(0,2*pi,1000)
N=[]
for i=1:length(myu)
  n=1/cos(myu(i))
  N(i)=n
end
disp(N)

plot(myu,N,'r')
xlabel('Angle of bank')
ylabel('load factor')
title('Variation btw angle and load factor')