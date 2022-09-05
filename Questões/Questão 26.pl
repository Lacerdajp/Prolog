primo(X) :- I is X-1, aux(X, I), !.

aux(X, 1) :- X=X.
aux(X, I) :- (0 is mod(X, I), X > 1 -> X=\=X ; (X > 1 ->  H is I-1, aux(X, H); X=\=X) ),!.

inserir([], L, L):-!.
inserir(E, L, [E|L]):- !.

concatenar([], L, L) :- !.
concatenar([X|L1], L2,[X|L3]) :- concatenar(L1, L2, L3), !.

listaPrimos(X, R) :- aux2(X, R), !.

aux2(1, R) :- inserir(1, [], R).
aux2(X, R) :- (primo(X) ->  inserir(X, [], A);inserir([], [], A)), H is X-1, aux2(H, B), concatenar(B, A, R),!.
