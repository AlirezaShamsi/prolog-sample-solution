el(I,L,X):-
	el2(I,1,L,X).
el2(I,J,[H|_],X):-
	I==J,
	X=H,!.
el2(I,J,[_|T],X):-
	I\=J,
	J2 is J+1,
	el2(I,J2,T,X).
