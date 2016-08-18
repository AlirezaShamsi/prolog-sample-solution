rev(L,L2):-
	rev2(L,[],L2).
rev2([],L,L).
rev2([H|T],L2,L3):-
	rev2(T,[H|L2],L3).
