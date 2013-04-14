%Devon Ring
%100801142

%A
%rectangle(N, top_left(X,Y), W, Z).

rectangle(r1,top_left(5, 2),3, 6).

rectangle(r2,top_left(6, 4),7, 1).


%B
%rules
perimeter(R,P):- rectangle(R,top_left(X, Y), W, Z),
 A is W + Z,
 P is 2 * A.

area(R,A):- rectangle(R,top_left(X, Y) ,W , Z),
	A is W * Z.