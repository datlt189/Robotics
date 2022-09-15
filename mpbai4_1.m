syms t1 t2 t3 l1 l2 l3 l4 l5 l6
l1 = 40
l2 = 30
l3 = 30
l4 = 50 
l5 = 30
l6 = 40
for t1 = 0: 0.2 : 2*3.14
    for t2 = 0: 0.2 : (2*3.14)/3
        for t3 = 0: 0.2 : 2*3.14
            Px = l1 + l4*(cos(t1)*cos(t2)^2 - cos(t1)*sin(t2)^2) + l5*(cos(t1)*cos(t2)^2 - cos(t1)*sin(t2)^2) + l6*(cos(t3)*(cos(t1)*cos(t2)^2 - cos(t1)*sin(t2)^2) - 2*cos(t1)*cos(t2)*sin(t2)*sin(t3))
            Py = l2 + l4*(cos(t2)^2*sin(t1) - sin(t1)*sin(t2)^2) + l5*(cos(t2)^2*sin(t1) - sin(t1)*sin(t2)^2) + l6*(cos(t3)*(cos(t2)^2*sin(t1) - sin(t1)*sin(t2)^2) - 2*cos(t2)*sin(t1)*sin(t2)*sin(t3))
            Pz = l3 - l4*sin(2*t2) - l5*sin(2*t2) - l6*sin(2*t2 + t3)
            plot3(Px,Py,Pz,'*');
            hold on       
        end
    end
end