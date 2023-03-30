/* weight(a,d,5).
weight(a,b,2).
weight(a,c,9).
weight(b,c,6).
weight(d,c,8).
weight(b,e,3).
*/

weight(a,e,4).
weight(a,b,1).
weight(b,e,3).
weight(b,d,2).
weight(e,d,5).
weight(a,c,4).
weight(c,f,6).
weight(c,g,7).



weicheck(Z,X,L2,Z2):- weight(Z,X,L2),not(member(X,Z2)).
weicheck(Z,X,L2,Z2):- weight(X,Z,L2),not(member(X,Z2)).

check(R,R,Path,Z,L,L1):- Path=Z,L=L1.
check(Z,R,Path,Z1,L,L1):- weicheck(Z,X,L2,Z1),append(Z1,[X],Z2),L3 is L2+L1,check(X,R,Path,Z2,L,L3).

first(P,R,Path,Z,L,L1):- append([P],[Z],Z2),check(Z,R,Path,Z2,L,L1).

findPath(P,R,Path,L) :- weicheck(P,Z,L1,[]),first(P,R,Path,Z,L,L1).