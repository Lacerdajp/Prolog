existe([_|T],X):-
    existe(T,X),!.
existe([H|_],X):-
    X==H,!.
