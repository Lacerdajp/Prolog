fibonacci(0,R):- R is 1.
fibonacci(1,R):- R is 1.
fibonacci(X,R):-
    Y is X-1, Z is X-2, fibonacci(Y,T),fibonacci(Z,H), R is T+H,!.
fibMenor(X,VALORNAFIB,Y):-
    fibonacci(VALORNAFIB,R), X>=R,Y is VALORNAFIB.
fibMenor(X,VALORNAFIB,Y):-
    fibonacci(VALORNAFIB,R), X<R,fibMenor(X,VALORNAFIB-1,Z),Y is Z.
adicionarFibLista(0,[H|[]]):-H is 1.
adicionarFibLista(Y,[H|T]):-
    fibonacci(Y,R),H is R,Z is Y-1 ,writeln(Z),adicionarFibLista(Z,T).
valoresFib(X,L):-
    fibMenor(X,X,Y),adicionarFibLista(Y,L).


