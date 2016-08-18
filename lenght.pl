len([],0).

len([_|T],N):-
	len(T,D),
	N is D+1.
