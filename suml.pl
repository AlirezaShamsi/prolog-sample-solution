sumList([],0).

sumList([H|T],S):-
	sumList(T,G),
	S is G+H.
