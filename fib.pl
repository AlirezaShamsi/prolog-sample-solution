fib(1,1):-!.
fib(2,1):-!.

fib(N,X):-
	N>2,
	N1 is N-1,
	fib(N1,X1),
	N2 is N-2,
	fib(N2,X2),
	X is X1+X2.

fib(Y,_):-
	Y<1,
	write('Out Of Range'),!.
