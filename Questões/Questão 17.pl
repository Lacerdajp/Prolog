inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).
