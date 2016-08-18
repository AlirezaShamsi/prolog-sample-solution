start(1).
final(3).

arc(1,a,1).
arc(1,b,2).
arc(2,b,3).
arc(3,a,3).

accept(W):-
	start(S),
	path(S,W).

path(S,[]):-
	final(S),!.

path(S,[H|T]):-
	arc(S,H,N),
	path(N,T),!.
