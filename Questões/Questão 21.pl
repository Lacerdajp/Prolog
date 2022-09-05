inserir(E, L, [H|T]):-
    E=H,L=T,!.

duplicar([], []):- !.
duplicar([H|T1],[X,Y|T2]) :-
    X=H,Y=H,duplicar(T1,T2).

duplicarPartindo(0, L, R) :- duplicar(L ,R), !.
duplicarPartindo(K, [H|T], R) :-
    X is K-1, duplicarPartindo(X, T, A), inserir(H, A, R),!.
