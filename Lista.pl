%Quest�o 1

%Quest�o 2

%Quest�o 3

%Quest�o 4

%Quest�o 5

%Quest�o 6

%Quest�o 7

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
%Quat�o 16
inteiros(X,Y,[H|T]):-
    X==Y,H=X,T=[],!.
inteiros(X,Y,[H|T]):-
   R is X + 1,inteiros(R,Y,A),H=X,T=A ,!.

%Quest�o 17
inverter(L, R):- aux([],L, R), !.
aux(L,[],R) :- L=R, !.
aux(L,[H|T],Z):- aux([H|L],T,Z).

%Quest�o 18
concatena([H1|T1],R,[H2|T2]):-
    H1=H2,concatena(T1,R,T2).
concatena([],[H3|T3],[H2|T2]):-
    H3=H2,concatena([],T3,T2).
concatena([],[H3|[]],[H2|[]]):-
         H3=H2.
%Quat�o 19
%inverter(L, R):- aux([],L, R), !.
%aux(L,[],R) :- L=R, !.
%aux(L,[H|T],Z):- aux([H|L],T,Z).
comparar([H|T],[X|Y]):-
    H=X,comparar(T,Y).
comparar([],[]):-!.
palindromo(L):- inverter(L,I),comparar(L,I).
%Quast�o 20
remova(X,[H1|T1],[H2|T2]):-
    H2=H1,remova(X,T1,T2),X=\=H1.
remova(X,[H|T1],T2):-
    X==H,remova(X,T1,T2).
remova(_,[],[]).
removerRep([H|T],[X|Y]):-
    remova(H,T,F),X=H,removerRep(F,Y).
removerRep([],[]).
%Quesst�o 21
%rever
inserir(E, L, [E|L]):- !.

duplicar([], []):- !.
duplicar([H|T1],[H,H|T2]) :- duplicar(T1,T2).

duplicarapartir(0, L, R) :- duplicar(L ,R), !.
duplicarapartir(K, [H|T], R) :- X is K-1, duplicarapartir(X, T, A), inserir(H, A, R),!.
%Quest�o 22
%rever
ultimo([H|[]], H) :- !.
ultimo([_|T], R) :- ultimo(T,R),!.

remover(X,[X|T],T):-!.
remover(X,[Y|T1],[Y|T2]) :- remover(X,T1,T2),!.

inserir(E, L, [E|L]):- !.

shiftR(L,R) :- ultimo(L, A), remover(A, L, Y), inserir(A, Y, R), !.

shiftRMul(L, 1, R) :- shiftR(L, R), !.
shiftRMul(L, K, R) :- O is K-1, shiftRMul(L, O, A), shiftR(A, R),!.

%Quest�o 23
%Rever

%Quest�o 24
%Rever

%Quest�o 25
%Rever

%Quest�o 26
%Rever

%Quat�o 27
fatorial(1,R):-
    R=1.

fatorial(X,R):-
    Y is X-1,fatorial(Y,Z),R is Z*X,!.
%Quest�o 28
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


































