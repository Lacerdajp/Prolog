
soma(X,[H|T]):-
    soma(Y,T),X is Y+H,!.
soma(X,[H|[]]):-
    X=H.
