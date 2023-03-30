weight(a,d,5).
weight(a,b,2).
weight(a,c,9).
weight(b,c,6).
weight(d,c,8).
weight(e,f,2).
weight(b,e,3).
weight(f,c,1).
weight(g,c,2).

pathexist(A,B):- weight(B,A,_);weight(A,B,_).

present(B,[B|_]).
present(B,[_|TAIL]):-present(B,TAIL).

findPath(Y,G,A,S):- path(Y,G,[Y],A,S).
findPath(_,_,_,_):- write("no").

path(Y,G,A,D,S):-
    pathexist(Y,G),
    not(present(G,A)),
    append(A,[G],D),
    cost(D,S,0).

path(S, G,[A|T],D,L):-pathexist(X,S),
    not(present(X,[A|T])),
    append([A|T],[X],U),
    path(X,G,U,D,L).

cost([H|[J|[]]],L,TMP):- weight(H,J,C),
    L is TMP+C.
cost([H|[J|[]]],L,TMP):-weight(J,H,C),
    L is TMP+C.

cost([H|[J|T]],L,TMP):- weight(H,J,C),
    U is TMP+C,
    cost([J|T],L,U).
cost([H|[J|T]],L,TMP):- weight(J,H,C),
    U is TMP+C,
    cost([J|T],L,U).