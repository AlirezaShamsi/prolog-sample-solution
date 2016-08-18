h(1,Left,Right,_):-
	write('Move top disk from '),
	write(Left),
	write(' to '),
	write(Right),
	nl.
h(N,_,_,_):-
	N<1,!.

h(N,Left,Right,Middle):-
	N>1,
	M is N-1,
	h(M,Left,Middle,Right),
	h(1,Left,Right,Middle),
	h(M,Middle,Right,Left),!.
