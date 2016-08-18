conc([],L,L).

conc([H|T1],T2,[H|T3]):-
	conc(T1,T2,T3).
