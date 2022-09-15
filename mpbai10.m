syms t1 t2 t3 t4 l1 l2 l3 l4 l5 l6
l1 = 50
l2 = 20
l3 = 40
l4 = 30 
l5 = 20
l6 = 20
for t1 = 0: 0.2 : 2*3.14
    for t2 = 0: 0.2 : 3.14/2
        for t3 = 0: 0.2 : 3.14/2
            for t4 = 0: 0.2 : 3.14/2
                Px = -sin(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l6*cos(t2 + t3 + t4) + l5*sin(t2 + t3 + t4))
                Py = cos(t1)*(l4*cos(t2 + t3) + l3*cos(t2) + l6*cos(t2 + t3 + t4) + l5*sin(t2 + t3 + t4))
                Pz =  l1 + l2 + l4*sin(t2 + t3) + l3*sin(t2) - l5*cos(t2 + t3 + t4) + l6*sin(t2 + t3 + t4)
                plot3(Px,Py,Pz,'*');
                hold on
            end
        end
    end
end