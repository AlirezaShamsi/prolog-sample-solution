
%grab banana

do(
    state(middle,onbox,middle,hasnot),
    grab,
    state(middle,onbox,middle,has)
):-!.


%-------------------------------------------------------
%climb box

do(
    state(L,onfloor,L,Banana),
    climb,
    state(L,onbox,L,Banana)
).



%------------------------------------------------------
%push box from L1 to L2

do(
    state(L1,onfloor,L1,Banana),
    push(L1,L2),
    state(L2,onfloor,L2,Banana)
).


%--------------------------------------------------
%walk from L1 to L2

do(
    state(L1,onfloor,Box,Banana),
    walk(L1,L2),
    state(L2,onfloor,Box,Banana)
).






% get plan = list of actions



canget(state(_,_,_,has),'میمون موز را دارد کار تمام شده است').

canget(State1,Plan):-
	do(State1,Action,State2),
	canget(State2,Plan2),
	add(Action,Plan2,Plan),!.

add(X,L,[X|L]).





