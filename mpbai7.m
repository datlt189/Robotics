syms t1  l1 l2 l3 l4 l5 l6 l7
l1 = 40
l2 = 10
l3 = 8
l4 = 30 
l5 = 20
l6 = 20
l7 = 10
for t1 = 0: 0.1 : 2*3.14
    Px = -l4*sin(t1)
    Py = l4*cos(t1)
    Pz = l1 + l2 + l3 - l6 - l7
    plot3(Px,Py,Pz,'*');
    hold on       
end