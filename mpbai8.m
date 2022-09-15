syms t1 t2 t3 t4 t5 l1 l2 l3 l4 l5 l6
l1 = 5
l2 = 20
l3 = 40
l4 = 50 
l5 = 5
l6 = 30
for t1 = 0: 0.3 : 2*3.14
    for t2 = 0: 0.3 : 3.14/2
        for t3 = 0: 0.3 : 3.14/2
            for t4 = 0: 0.3 : 3.14/2
                for t5 = 0: 0.3 : 3.14/2
                    Px = -cos(t1)*(l1 + l5*cos(t2 + t3 + t4 + t5) - l6*sin(t2 + t3 + t4 + t5) + l4*cos(t2 + t3) + l3*sin(t2))
                    Py = sin(t1)*(l1 + l5*cos(t2 + t3 + t4 + t5) - l6*sin(t2 + t3 + t4 + t5) + l4*cos(t2 + t3) + l3*sin(t2))
                    Pz = l2 - l6*cos(t2 + t3 + t4 + t5) - l5*sin(t2 + t3 + t4 + t5) - l4*sin(t2 + t3) + l3*cos(t2)
                    plot3(Px,Py,Pz,'*');
                    hold on
                end
            end
        end
    end
end