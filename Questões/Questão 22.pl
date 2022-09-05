ultimo([H|[]], H) :- !.
ultimo([_|T], R) :- ultimo(T,R),!.

remover(X,[X|T],T):-!.
remover(X,[Y|T1],[Y|T2]) :- remover(X,T1,T2),!.

inserir(E, L, [E|L]):- !.

rotacionar(L,R) :- ultimo(L, A), remover(A, L, Y), inserir(A, Y, R), !.

rotacionarTotal(L, 1, R) :- rotacionar(L, R), !.
rotacionarTotal(L, K, R) :- O is K-1, rotacionarTotal(L, O, A), rotacionar(A, R),!.
