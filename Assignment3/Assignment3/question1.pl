
%Devon Ring
%100801142

%data
man(peter).
man(homer).
man(stan).
man(stewie).

woman(lois).
woman(francine).
woman(marge).


blonde(francine).

tall(francine).
tall(marge).
tall(lois).

cia(stan).

%rules
stanlikes(Y):- tall(Y), blonde(Y), woman(Y).
francinelikes(Y):- rich(Y).
rich(X):- cia(X).
female(X):- woman(X).

%Questions
%female(X).
%stanlikes(Y).
%francinelikes(Y).
%rich(stan).