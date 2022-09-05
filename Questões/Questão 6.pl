arco('MC',[3,3,e],[2,2,d],1, 'Mover 1 M e 1 C para direita').
arco('MC',[2,2,d],[3,3,e],1, 'Mover 1 M e 1 C para esquerda').

arco('MC',[3,3,e],[3,2,d],1, 'Mover 1 C para direita').
arco('MC',[3,2,d],[3,3,e],1, 'Mover 1 C para esquerda').

arco('MC',[3,3,e],[3,1,d],1, 'Mover 2 C para direita').
arco('MC',[3,1,d],[3,3,e],1, 'Mover 2 C para esquerda').

arco('MC',[3,1,d],[3,2,e],1, 'Mover 1 C para esquerda').
arco('MC',[3,2,e],[3,1,d],1, 'Mover 1 C para direita').

arco('MC',[3,2,e],[2,2,d],1, 'Mover 1 M para direita').
arco('MC',[2,2,d],[3,2,e],1, 'Mover 1 M para esquerda').

arco('MC',[3,2,e],[3,0,d],1, 'Mover 2 C para direita').
arco('MC',[3,0,d],[3,2,e],1, 'Mover 2 C para esquerda').

arco('MC',[3,0,d],[3,1,e],1, 'Mover 1 C para esquerda').
arco('MC',[3,1,e],[3,0,d],1, 'Mover 1 C para direita').

arco('MC',[3,1,e],[1,1,d],1, 'Mover 2 M para direita').
arco('MC',[1,1,d],[3,1,e],1, 'Mover 2 M para esquerda').

arco('MC',[1,1,d],[2,2,e],1, 'Mover 1 M e 1 C para esquerda').
arco('MC',[2,2,e],[1,1,d],1, 'Mover 1 M e 1 C para direita').

arco('MC',[2,2,e],[0,2,d],1, 'Mover 2 M para direita').
arco('MC',[0,2,d],[2,2,e],1, 'Mover 2 M para esquerda').

arco('MC',[0,2,d],[0,3,e],1, 'Mover 1 C para esquerda').
arco('MC',[0,3,e],[0,2,d],1, 'Mover 1 C para direita').

arco('MC',[0,3,e],[0,1,d],1, 'Mover 2 C para direita').
arco('MC',[0,1,d],[0,3,e],1, 'Mover 2 C para esquerda').

arco('MC',[0,1,d],[1,1,e],1, 'Mover 1 M para esquerda').
arco('MC',[1,1,e],[0,1,d],1, 'Mover 1 M para direita').

arco('MC',[1,1,e],[0,0,d],1, 'Mover 1 M e 1 C para direita').
arco('MC',[0,0,d],[1,1,e],1, 'Mover 1 M e 1 C para esquerda').

arco('MC',[0,1,d],[0,2,e],1, 'Mover 1 C para esquerda').
arco('MC',[0,2,e],[0,1,d],1, 'Mover 1 C para direita').

arco('MC',[0,2,e],[0,0,d],1, 'Mover 2 C para direita').
arco('MC',[0,0,d],[0,2,e],1, 'Mover 2 C para esquerda').

caminho(G, V1, V2, Cam, P) :- auxCami(G, V1, V2, Cam, P, []).
auxCami(G, V1, V2, [A], Pes, _):- arco(G, V1, V2, Pes, A).
auxCami(G, V1, V2, [A1|T], Pes, V):-
    arco(G, V1, X, P1, A1),
    not(member(X,V)),
    auxCami(G, X, V2, T, P2,[X|V]),
    Pes is P1 + P2.

cmc(G, V1, V2, Cam):- caminho(G, V1, V2, Cam, P1), not((caminho(G, V1, V2,_, P2), P2 < P1)),!.
