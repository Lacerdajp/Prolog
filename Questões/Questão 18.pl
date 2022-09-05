concatena([H1|T1],R,[H2|T2]):-
    H1=H2,concatena(T1,R,T2).
concatena([],[H3|T3],[H2|T2]):-
    H3=H2,concatena([],T3,T2).
concatena([],[H3|[]],[H2|[]]):-
         H3=H2.
