flatten([],[]).

flatten([X|Y],Out) :- 	flatten(X,W),flatten(Y,Z),
						append(W,Z,Out).

flatten([X|Y], [X|Z]) :-X \= [],X \= [_|_],
					    flatten(Y,Z).



%%%%%%%%%%%%%%%%%5
%%%	OUTPUT

%?- [question3].
% question3 compiled 0.00 sec, 1,576 bytes
%true.

%?- flatten([a, [[b,c],d], [[e]], [f]], X).
%X = [a, b, c, d, e, f] ;
%false.

%?- flatten([a,[[]], [[c,d],e]], X).
%X = [a, c, d, e] ;
%false.

%?- 
