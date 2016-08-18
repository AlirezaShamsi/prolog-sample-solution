com(N,N,1):-!.
com(_,0,1):-!.

com(N,R,C):-
	N>R,
	N>0,
	R>0,
	N1 is N-1,
	com(N1,R,C1),
	R1 is R-1,
	com(N1,R1,C2),
	C is C1+C2.
