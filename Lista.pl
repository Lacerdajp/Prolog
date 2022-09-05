%Questão 1

%Questão 2

%Questão 3

%Questão 4

%Questão 5

%Questão 6

%Questão 7

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
%Quatão 16
inteiros(X,Y,[H|T]):-
    X==Y,H=X,T=[],!.
inteiros(X,Y,[H|T]):-
   R is X + 1,inteiros(R,Y,A),H=X,T=A ,!.

%Questão 17
inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).

%Questão 18
concatena([H1|T1],R,[H2|T2]):-
    H1=H2,concatena(T1,R,T2).
concatena([],[H3|T3],[H2|T2]):-
    H3=H2,concatena([],T3,T2).
concatena([],[H3|[]],[H2|[]]):-
         H3=H2.
%Quatão 19
%inverter(L, R):- aux([],L, R), !.
%aux(L,[],R) :- L=R, !.
%aux(L,[H|T],Z):- aux([H|L],T,Z).
comparar([H|T],[X|Y]):-
    H=X,comparar(T,Y).
comparar([],[]):-!.
palindromo(L):- inverter(L,I),comparar(L,I).
%Quastão 20
remova(X,[H1|T1],[H2|T2]):-
    H2=H1,remova(X,T1,T2),X=\=H1.
remova(X,[H|T1],T2):-
    X==H,remova(X,T1,T2).
remova(_,[],[]).
removerRep([H|T],[X|Y]):-
    remova(H,T,F),X=H,removerRep(F,Y).
removerRep([],[]).
%Quesstão 21
%rever
inserir(E, L, [E|L]):- !.

duplicar([], []):- !.
duplicar([H|T1],[H,H|T2]) :- duplicar(T1,T2).

duplicarapartir(0, L, R) :- duplicar(L ,R), !.
duplicarapartir(K, [H|T], R) :- X is K-1, duplicarapartir(X, T, A), inserir(H, A, R),!.
%Questão 22
%rever
ultimo([H|[]], H) :- !.
ultimo([_|T], R) :- ultimo(T,R),!.

remover(X,[X|T],T):-!.
remover(X,[Y|T1],[Y|T2]) :- remover(X,T1,T2),!.

inserir(E, L, [E|L]):- !.

shiftR(L,R) :- ultimo(L, A), remover(A, L, Y), inserir(A, Y, R), !.

shiftRMul(L, 1, R) :- shiftR(L, R), !.
shiftRMul(L, K, R) :- O is K-1, shiftRMul(L, O, A), shiftR(A, R),!.

%Questão 23
%Rever

%Questão 24
%Rever

%Questão 25
%Rever

%Questão 26
%Rever

%Quatão 27
fatorial(1,R):-
    R=1.

fatorial(X,R):-
    Y is X-1,fatorial(Y,Z),R is Z*X,!.
%Questão 28
%rever
fibonacci(0,R):- R is 1.
fibonacci(1,R):- R is 1.
fibonacci(X,R):-
    Y is X-1, Z is X-2, fatorial(Y,T),fatorial(Z,H), R is T+H,!.
fibMenor(X,VALORNAFIB,Y):-
    fibonacci(VALORNAFIB,R), X>=R,Y is VALORNAFIB-1.
fibMenor(X,VALORNAFIB,Y):-
    fibonacci(VALORNAFIB,R), X<R,fibMenor(X,VALORNAFIB-1,Z),Y=Z.
adicionarFibLista(0,[1|[]]).
adicionarFibLista(Y,[H|T]):-
    fibonacci(Y,R),H=R,adicionarFibLista(Y-1,T).
valoresFib(X,L):-
    fibMenor(X,X,Y),adicionarFibLista(Y,R),L=R.


































