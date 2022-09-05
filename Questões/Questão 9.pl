ultimo([_|T],X):-
    ultimo(T,X),!.
ultimo([H|T],X):-
    T==[],X=H,!.
