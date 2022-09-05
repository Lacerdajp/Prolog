fatorial(1,R):-
    R=1.

fatorial(X,R):-
    Y is X-1,fatorial(Y,Z),R is Z*X,!.
