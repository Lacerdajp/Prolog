arco('L','I',a,1).
arco('L',a,b,1).
arco('L',b,c,1).
arco('L',c,d,1).
arco('L',b,e,1).
arco('L',e,f,1).
arco('L',e,g,1).
arco('L',b,h,1).
arco('L',h,i,1).
arco('L',h,j,1).
arco('L',j,k,1).
arco('L',k,l,1).
arco('L',l,m,1).
arco('L',m,n,1).
arco('L',n,o,1).
arco('L',n,p,1).
arco('L',o,'F',1).
arco('L',p,'F',1).


caminho(G, V1, V2, Cam, Pes) :- auxCami(G, V1, V2, Cam, Pes, []).
auxCami(G, V1, V2, [V1, V2], Pes, _):- arco(G, V1, V2, Pes).
auxCami(G, V1, V2, [V1|T], Pes, V):- arco(G, V1, X, P1),not(member(X,V)),auxCami(G, X, V2, T, P2,[X|V]), Pes is P1 + P2.

cmc(G, V1, V2, Cam):- caminho(G, V1, V2, Cam, P1), not((caminho(G, V1, V2,_, P2), P2 < P1)),!.
