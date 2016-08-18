
solution([]).
solution([X/Y|Others]):-
	solution(Others),
	member(Y,[1,2,3,4,5]),
	noattack(X/Y,Others).

noattack(_,[]).
noattack(X/Y,[X1/Y1|Others]):-
	Y=\=Y1,
	Y1-Y=\=X1-X,
	Y1-Y=\=X-X1,
	noattack(X/Y,Others).

template([1/_,2/_,3/_,4/_,5/_]).
