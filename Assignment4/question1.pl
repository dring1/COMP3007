list([],[]).
list([],[_|_]).

list([X|L1],[X|L2]) :- list(L1,L2).

list([X|L1],[_|L2]) :- list([X|L1],L2).


has_duplicates([X,X]).

has_duplicates([X|L]) :- contians(X,L).


has_duplicates([_|L]) :- has_duplicates(L).


contains(X,[X|_]).


contains(X,[_|L]) :- contains(X,L).

%%%%%%%%%%%
%					OUTPUT
%?- [question1]
%|    .
% question1 compiled 0.00 sec, 2,728 bytes
%true.

%?- [question1].
% question1 compiled 0.00 sec, 264 bytes
%true.

%?- has_duplicates([a,e,b,d,s,e]).
%true .

%?- has_duplicates([a,b,d,s,e]).
%false.

%?- has_duplicates([]).
%false.
