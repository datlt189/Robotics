l1 = 15;
l2 = 15;
for t=0:pi/100:2*pi
    x = cos(3*t)^2*cos(t);
    y = cos(3*t)^2*sin(t);
    c2 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1-c2^2));
    t2 = atan2(s2,c2);
    c1 = x*(l1+l2*cos(t2))+l2*sin(t2)*y;
    s1 = y*(l1+l2*cos(t2))-l2*sin(t2)*x;
    t1 = atan2(s1,c1);
    Px = l1*cos(t1)+l2*cos(t1+t2);
    Py = l1*sin(t1)+l2*sin(t1+t2);
    subplot(2,1,1)
    plot(t,t1,'-o',t,t2,'--o'); pause(0.01)
    xlabel('t');
    ylabel('Rotation');
    hold on;
    subplot(2,1,2)
    plot(Px,Py,'d')
    xlabel('x(cm)');
    ylabel('y(cm)'); pause(0.01);
    hold on;
end