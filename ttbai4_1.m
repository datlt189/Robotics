syms t1 t2 t3 l1 l2 l3 l4 l5 l6
  
a1 = [ 1 0 0 l1; 0 1 0 l2; 0 0 1 0; 0 0 0 1]
a2 = [cos(t1) -sin(t1)  0 0; sin(t1) cos(t1) 0 0; 0 0 1 0; 0 0 0 1]
a3 = [ 1 0 0 0; 0 1 0 0; 0 0 1 l3; 0 0 0 1]
a4 = [cos(t2) 0 sin(t2) 0; 0 1 0 0; -sin(t2) 0 cos(t2) 0; 0 0 0 1]
a6 = [ 1 0 0 l4; 0 1 0 0; 0 0 1 0; 0 0 0 1]
a7 = [ 1 0 0 l5; 0 1 0 0; 0 0 1 0; 0 0 0 1]
a8 = [cos(t3) 0 sin(t3) 0; 0 1 0 0; -sin(t3) 0 cos(t3) 0; 0 0 0 1]
a9 = [ 1 0 0 l6; 0 1 0 0; 0 0 1 0; 0 0 0 1]
P = [0;0;0;1]
T = a1*a2*a3*a4*a5*a6*a7*a8*a9*P
simplify(T)