primo(X) :- I is X-1, auxPrim(X, I), !.

auxPrim(X, 1) :- X=X.
auxPrim(X, I) :- (0 is mod(X, I), X > 1 -> X=\=X ; (X > 1 ->  H is I-1, auxPrim(X, H); X=\=X) ),!.
