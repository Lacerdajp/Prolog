remover(X,[H1|T1],[H2|T2]):-
    remover(X,T1,T2),H2=H1.
remover(X,[H|T1],T2):-
    X==H,T2=T1,!.
