inteiros(X,Y,[H|T]):-
    X==Y,H=X,T=[],!.
inteiros(X,Y,[H|T]):-
   R is X + 1,inteiros(R,Y,A),H=X,T=A ,!.

