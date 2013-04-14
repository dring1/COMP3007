%Devon Ring
%100801142


%A
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


%B
reach(X,Y,Q):- edge(X, Y), Q is 1.
reach(X,Y,C):-  edge(X, Z), reach(Z,Y,D), C is D + 1, C<6.

%unable to return -1 , would constantly crash or cause other parts of the program to fail


%C
dcycle(X):- edge(Y,X) , reach(X, X,Q). 




%QUESTION
dcycle(c).