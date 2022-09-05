
posicao(X,N,[H|_]):-
    X==H,N is 0,!.
posicao(X,N,[_|T]):-
	posicao(X,Y,T),N is Y+1,member(X,T),! .
posicao(X,N,[_|T]):-
    not(member(X,T)),N is 0-1,!.
