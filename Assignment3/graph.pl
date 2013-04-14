%Devon Ring
%100801142

node(a).
node(b).
node(c).
node(d).
node(e).
node(f).

edge(a,b).
edge(b,c).
edge(c,e).
edge(e,f).
edge(e,d).
edge(d,b).



reach(X,Y,Q):- edge(X, Y), Q is 1.
reach(X,Y,C):-  edge(X, Z), reach(Z,Y,D), C is D + 1, C<.

%reach(X,Y):- edge(Y,X).

dcycle(X):- edge(Y,X) , reach(X, X,Q). 


%%%%%%%%%%%%%%%%%%
%reach(X,Y,C):- edge(X,Z), C is C+1, (Z,Y,C).
%%%%%%%%%%%%%%%%%%