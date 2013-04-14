remove_nth(1,[_|_l],_l).

remove_nth(_a,[X|_l],P) :-   Derp is _a - 1,	remove_nth(Derp,_l,Derp), P = [X | Derp].


%%%%%%%%%%%%%%%%%%%%%%%%%55
%%			OUTPUT


%?- [question2].
% question2 compiled 0.00 sec, 1,120 bytes
%true.

%?- remove_nth(4,[a,e,e,d,s,e],L).
%false.

%?- remove_nth(6,[a,b],L).
%false.

