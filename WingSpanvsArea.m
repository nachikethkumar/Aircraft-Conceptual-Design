
%Aspectratio=(span^2)/Area
Aspectratio=linspace(6,12,50)
for i=1:length(Aspectratio)
    Area=linspace(20,100,1000)
    span=sqrt(Aspectratio(i)*Area)
    plot(Area,span,'g')
    hold on 
end
    xlabel('Area (m^2)')
    ylabel('Span of Wing (m)')
    title('Area vs Span for Aspect Ratio 6 to 12')
    