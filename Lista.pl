%Quest�o8
tamanho([],0).
tamanho([_|T],R):-tamanho(T,X), R is X+1.
%Quest�o 9
ultimo([_|T],X):-
    ultimo(T,X),!.
ultimo([H|T],X):-
    T==[],X=H,!.
%Quest�o 10
existe([_|T],X):-
    existe(T,X),!.
existe([H|_],X):-
    X==H,!.
%Quest�o 11

posi��o(X,N,[H|_]):-
    X==H,N is 0,!.
posi��o(X,N,[_|T]):-
	posi��o(X,Y,T),N is Y+1,member(X,T),! .
posi��o(X,N,[_|T]):-
    not(member(X,T)),N is 0-1,!.
%Quest�o 12

soma(X,[H|T]):-
    soma(Y,T),X is Y+H,!.
soma(X,[H|[]]):-
    X=H.
%Quest�o 13
maior(X,[H|T]):-
	maior(Y,T),((Y>=H,X=Y);X=H),!.
maior(X,[H|[]]):-
    X=H,!.
%Quest�o 14
remover(X,[H1|T1],[H2|T2]):-
    remover(X,T1,T2),H2=H1.
remover(X,[H|T1],T2):-
    X==H,T2=T1,!.
%Quest�o 15
inserir(X,L1,[H|T]):-
    H=X,T=L1.

inteiros(X,Y,[H|T]):-
    X==Y,H=X,T=[],!.
inteiros(X,Y,[H|T]):-
   R is X + 1,inteiros(R,Y,A),H=X,T=A ,!.

%Quest�o 16
inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).

%Quest�o 17
concatena([H1|T1],R,[H2|T2]):-
    H1=H2,concatena(T1,R,T2).
concatena([],[H3|T3],[H2|T2]):-
    H3=H2,concatena([],T3,T2).
concatena([],[H3|[]],[H2|[]]):-
         H3=H2.









































