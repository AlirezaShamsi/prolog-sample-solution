%addFirst-------------------------

addFirst(X,L,[X|L]).

%addLast--------------------------

addLast(X,[H|[]],[H,X]):-!.

addLast(X,[H|T],[H|L]):-
	addLast(X,T,L).

