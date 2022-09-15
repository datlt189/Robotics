syms t1 t2 l1 l2 l3 l4 l5
l1 = 50
l2 = 30
l3 = 10
l4 = 40 
l5 = 40
for t1 = 0: 0.1 : 2*3.14
    for t2 = 0: 0.1 : 2*3.14
        Px = l2*cos(t1) + l3*sin(t1) + l4*cos(t1)*cos(t2) + l5*cos(t1)*sin(t2)
        Py = l2*sin(t1) - l3*cos(t1) + l4*cos(t2)*sin(t1) + l5*sin(t1)*sin(t2)
        Pz = l1 + l5*cos(t2) - l4*sin(t2)
        plot3(Px,Py,Pz,'*');
        hold on       
    end
end