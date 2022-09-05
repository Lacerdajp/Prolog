
aux_renda(Credito, Renda, Estimativa, Filhos, Casado) :-
    P is Credito/Estimativa,
    Q is (P/Renda)*100,
    A is Filhos*15 + Q + Casado*10,
    A < 25.
aux_tempo(Preço, Estimativa, Emprego, Idade) :-
    (
    Emprego = 'CLT' ->  T1 is 10;
    T1 is 30
    ),
    T2 is Preço/10000,
    (
    Estimativa < T1 ;
    Estimativa < T2;
    Idade + Estimativa < 50
    ).

credit(Credito, Renda, Idade, Casado,Filhos, Estimativa, Preço_bens, Emprego):-
    aux_tempo(Preço_bens, Estimativa, Emprego, Idade),
    aux_renda(Credito, Renda, Estimativa, Filhos, Casado).

avaliacao_credito(Credito, Renda, Idade, Casado,Filhos, Estimativa, Preço_bens, Emprego):-
    ( credit(Credito, Renda, Idade, Casado,Filhos, Estimativa, Preço_bens, Emprego) ->
	write("aceito"); write("recusado, você pode tentar outra hora")).
