remova(X,[H1|T1],[H2|T2]):-
    H2=H1,remova(X,T1,T2),X=\=H1.
remova(X,[H|T1],T2):-
    X==H,remova(X,T1,T2).
remova(_,[],[]).
removerRep([H|T],[X|Y]):-
    remova(H,T,F),X=H,removerRep(F,Y).
removerRep([],[]).

