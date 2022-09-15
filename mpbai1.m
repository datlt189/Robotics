syms t1 t2 t3 l1 l2 l3 l4 l5
l1 = 50
l2 = 20
l3 = 40
l4 = 20 
l5 = 20
for t1 = 0: 0.3 : 2*3.14
    for t2 = 0: 0.3 : 2*3.14
        for t3 = 0: 0.3 : 2*3.14
            Px = -3 + l4 + l5*cos(t2)*sin(t3)
            Py = l2 - l5*(cos(t3)*sin(t1) - cos(t1)*sin(t2)*sin(t3))
            Pz =  l1 + l5*(cos(t1)*cos(t3) + sin(t1)*sin(t2)*sin(t3))
            plot3(Px,Py,Pz,'*');
            hold on
        end
    end
end