%Questão8
tamanho([],0).
tamanho([_|T],R):-tamanho(T,X), R is X+1.
%Questão 9
ultimo([_|T],X):-
    ultimo(T,X),!.
ultimo([H|T],X):-
    T==[],X=H,!.
%Questão 10
existe([_|T],X):-
    existe(T,X),!.
existe([H|_],X):-
    X==H,!.
%Questão 11

posição(X,N,[H|_]):-
    X==H,N is 0,!.
posição(X,N,[_|T]):-
	posição(X,Y,T),N is Y+1,member(X,T),! .
posição(X,N,[_|T]):-
    not(member(X,T)),N is 0-1,!.
%Questão 12

soma(X,[H|T]):-
    soma(Y,T),X is Y+H,!.
soma(X,[H|[]]):-
    X=H.
%Questão 13
maior(X,[H|T]):-
	maior(Y,T),((Y>=H,X=Y);X=H),!.
maior(X,[H|[]]):-
    X=H,!.
%Questão 14
remover(X,[H1|T1],[H2|T2]):-
    remover(X,T1,T2),H2=H1.
remover(X,[H|T1],T2):-
    X==H,T2=T1,!.
%Questão 15
inserir(X,L1,[H|T]):-
    H=X,T=L1.

inteiros(X,Y,[H|T]):-
    X==Y,H=X,T=[],!.
inteiros(X,Y,[H|T]):-
   R is X + 1,inteiros(R,Y,A),H=X,T=A ,!.

%Questão 16
inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).

%Questão 17
concatena([H1|T1],R,[H2|T2]):-
    H1=H2,concatena(T1,R,T2).
concatena([],[H3|T3],[H2|T2]):-
    H3=H2,concatena([],T3,T2).
concatena([],[H3|[]],[H2|[]]):-
         H3=H2.









































