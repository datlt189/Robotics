syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6 s
l1 = 30
l2 = 40
l3 = 6
l4 = 50 
l5 = 30
for t1 = 0: 0.1 : 2*3.14
    for t2 = 0: 0.1 : 2*3.14
        Px = l4*cos(t1 + t2) + l2*cos(t1)
        Py = l4*sin(t1 + t2) + l2*sin(t1)
        Pz = l1 + l3 - l5
        plot3(Px,Py,Pz,'*');
        hold on       
    end
end
