remove(I,L,L2):-
	remove(I,1,L,L2).
remove(I,I,[_|T],T).
remove(I,J,[H|T],[H|Y]):-
	I\=J,
	J2 is J+1,
	remove(I,J2,T,Y).
%-------------------------------------------Remove2
remove2(I,L,L2):-
	el(I,L,X),
	remove3(X,L,L2).
remove3(X,[X|T],T).
remove3(X,[H,T],[H,Y]):-
	X\=H,
	remove3(X,T,Y).
