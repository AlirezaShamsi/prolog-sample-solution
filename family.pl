

parent(hamid,javad).
parent(maryam,zahra).


male(hamid).
male(javad).

female(maryam).
female(zahra).



mother(X,Y):-
	parent(X,Y),
	female(Y).

father(X,Y):-
	parent(X,Y),
	male(Y).
