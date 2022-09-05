tamanho([],0).
tamanho([_|T],R):-tamanho(T,X), R is X+1.
