% composite material
m=linspace(0.95,1,50)
Wgross=(185+5000)./(1-(0.1858)-((0.6292).*m))
plot(m,Wgross)
xlabel('composite material multiplier (m)')
ylabel('Gross Weight(Kg)')
title('Composite material trade')
