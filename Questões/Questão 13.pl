maior(X,[H|T]):-
	maior(Y,T),((Y>=H,X=Y);X=H),!.
maior(X,[H|[]]):-
    X=H,!.
