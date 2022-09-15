syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 l7 l8
l1 = 50
l2 = 40
l3 = 10
l4 = 20 
l5 = 10
l6 = 10
l7 = 20
l8 = 10
for t1 = 0: 0.5 : 2*3.14
    for t2 = 0: 0.5 : 2*3.14
        for t3 = 0: 0.5 : 2*3.14
            for t4 = 0: 0.5 : 2*3.14
                Px = l6*(cos(t3)*sin(t1) + cos(t1)*cos(t2)*sin(t3)) - l5*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) + l2*cos(t1) + l3*sin(t1) - l7*(cos(t4)*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) + cos(t1)*sin(t2)*sin(t4)) - l8*(sin(t4)*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) - cos(t1)*cos(t4)*sin(t2)) + l4*cos(t1)*cos(t2)
                Py = l5*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) - l6*(cos(t1)*cos(t3) - cos(t2)*sin(t1)*sin(t3)) - l3*cos(t1) + l2*sin(t1) + l7*(cos(t4)*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) - sin(t1)*sin(t2)*sin(t4)) + l8*(sin(t4)*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) + cos(t4)*sin(t1)*sin(t2)) + l4*cos(t2)*sin(t1)
                Pz = l1 - l7*(cos(t2)*sin(t4) + cos(t3)*cos(t4)*sin(t2)) + l8*(cos(t2)*cos(t4) - cos(t3)*sin(t2)*sin(t4)) - l4*sin(t2) - l5*cos(t3)*sin(t2) - l6*sin(t2)*sin(t3)
                plot3(Px,Py,Pz,'*');
                hold on
            end
        end
    end
end