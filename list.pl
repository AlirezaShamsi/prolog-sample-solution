%member(X,Y)

member(X,[X|_]):-!.

member(X,[H|T]):-
	X\=H,
	member(X,T).
