inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).
comparar([H|T],[X|Y]):-
    H=X,comparar(T,Y).
comparar([],[]):-!.
palindromo(L):- inverter(L,I),comparar(L,I).
