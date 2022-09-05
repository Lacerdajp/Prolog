linhaVencedora(Tab, Player) :-
    Tab= [Player,Player,Player,_,_,_,_,_,_].
linhaVencedora(Tab, Player) :-
    Tab = [_,_,_,Player,Player,Player,_,_,_].
linhaVencedora(Tab, Player) :-
    Tab = [_,_,_,_,_,_,Player,Player,Player].

colunaVencedora(Tab, Player) :- Tab = [Player,_,_,Player,_,_,Player,_,_].
colunaVencedora(Tab, Player) :- Tab = [_,Player,_,_,Player,_,_,Player,_].
colunaVencedora(Tab, Player) :- Tab = [_,_,Player,_,_,Player,_,_,Player].

diagonalVencedora(Tab, Player) :- Tab = [Player,_,_,_,Player,_,_,_,Player].
diagonalVencedora(Tab, Player) :- Tab= [_,_,Player,_,Player,_,Player,_,_].

vitoria(Tab, Player) :- linhaVencedora(Tab, Player), !.
vitoria(Tab, Player) :- colunaVencedora(Tab, Player), !.
vitoria(Tab, Player) :- diagonalVencedora(Tab, Player), !.

x_wins(Tab, Player,N) :-
    marca(Tab, N, Player, NovoTab),
    vitoria(NovoTab, Player), !.

x_vence(Tab,1):- x_wins(Tab, x, 1), !.
x_vence(Tab,2):- x_wins(Tab, x, 2), !.
x_vence(Tab,3):- x_wins(Tab, x, 3), !.
x_vence(Tab,4):- x_wins(Tab, x, 4), !.
x_vence(Tab,5):- x_wins(Tab, x, 5), !.
x_vence(Tab,6):- x_wins(Tab, x, 6), !.
x_vence(Tab,7):- x_wins(Tab, x, 7), !.
x_vence(Tab,8):- x_wins(Tab, x, 8), !.
x_vence(Tab,9):- x_wins(Tab, x, 9), !.

o_vence(Tab,1):- x_wins(Tab, o, 1), !.
o_vence(Tab,2):- x_wins(Tab, o, 2), !.
o_vence(Tab,3):- x_wins(Tab, o, 3), !.
o_vence(Tab,4):- x_wins(Tab, o, 4), !.
o_vence(Tab,5):- x_wins(Tab, o, 5), !.
o_vence(Tab,6):- x_wins(Tab, o, 6), !.
o_vence(Tab,7):- x_wins(Tab, o, 7), !.
o_vence(Tab,8):- x_wins(Tab, o, 8), !.
o_vence(Tab,9):- x_wins(Tab, o, 9), !.

marca(['  ',B,C,D,E,F,G,H,I], 1, Player, [Player,B,C,D,E,F,G,H,I]).
marca([A,'  ',C,D,E,F,G,H,I], 2, Player, [A,Player,C,D,E,F,G,H,I]).
marca([A,B,'  ',D,E,F,G,H,I], 3, Player, [A,B,Player,D,E,F,G,H,I]).
marca([A,B,C,'  ',E,F,G,H,I], 4, Player, [A,B,C,Player,E,F,G,H,I]).
marca([A,B,C,D,'  ',F,G,H,I], 5, Player, [A,B,C,D,Player,F,G,H,I]).
marca([A,B,C,D,E,'  ',G,H,I], 6, Player, [A,B,C,D,E,Player,G,H,I]).
marca([A,B,C,D,E,F,'  ',H,I], 7, Player, [A,B,C,D,E,F,Player,H,I]).
marca([A,B,C,D,E,F,G,'  ',I], 8, Player, [A,B,C,D,E,F,G,Player,I]).
marca([A,B,C,D,E,F,G,H,'  '], 9, Player, [A,B,C,D,E,F,G,H,Player]).

movimento(Tab, N, Player, New) :- marca(Tab, N, Player, New).
movimento(Tab, N, Player, New) :- marca(Tab, N, Player, New).

display([A,B,C,D,E,F,G,H,I]) :-
    write([A,B,C]),nl,
    write([D,E,F]),nl,
    write([G,H,I]),nl,nl.

le_jogada(Nova,Tab, Player) :-
    write("Digite um numero de 1 a 9 correspondente a posicao desejada"),nl,
    display(Tab),
    read(N),
    movimento(Tab, N, Player, Nova).

jogar(Tab, _) :-
    not(member('  ',Tab)),
    !,
    write('Velha!'), nl.

jogar(Tab, Player) :-
    vitoria(Tab,Player),
    !.

jogar(Tab, x) :-
    le_jogada(New, Tab, x),
    display(New),
    (vitoria(New,x),
     write("Voce venceu!");
    jogar(New, o)).

jogar(Tab, o) :-
    not(x_vence(Tab, I)),
    o_vence(Tab, I),
    movimento(Tab, I, o, CPUBoard),
    display(CPUBoard),
    (vitoria(CPUBoard, o),
     write("Voce perdeu!");
    jogar(CPUBoard, x)), !.

jogar(Tab, o) :-
    not(x_vence(Tab, _)),
    movimento(Tab, _, o, CPUBoard),
    display(CPUBoard),
    (vitoria(CPUBoard, o),
     write("Voce perdeu!");
    jogar(CPUBoard, x)),
    !.

jogar(Tab, o) :-
    x_vence(Tab, Posicao),
    not(o_vence(Tab, _)),
    movimento(Tab, Posicao, o, CPUBoard),
    display(CPUBoard),
    (vitoria(CPUBoard, o),
     write("Voce perdeu!");
    jogar(CPUBoard, x)),
    !.

jogar(Tab, o) :-
    x_vence(Tab, _),
    o_vence(Tab, Posicao),
    movimento(Tab, Posicao, o, CPUBoard),
    display(CPUBoard),
    (vitoria(CPUBoard, o),
    write("Voce perdeu!");
    jogar(CPUBoard, x)), !.

jogo_da_velha :-
    jogar(['  ','  ','  ','  ','  ','  ','  ','  ','  '], x),!.
