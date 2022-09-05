divisor(X, Y, D) :-
    0 is mod(X,D) , 0 is mod(Y,D), !.

mdc(X, Y, R) :-
    auxmdc(X, Y, 2, R),!.

auxmdc(X, Y, A, R) :-
    (X < Y -> Y > A ; X > A),(divisor(X, Y, A) ->  R=A; H is A+1, auxmdc(X, Y, H, R) ), !.
