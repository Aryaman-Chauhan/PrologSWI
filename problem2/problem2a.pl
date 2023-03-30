sublist_chk([],_,_).
sublist_chk([H|T],X,[H|Y]):-sublist_chk(T,X,Y),
    !.
sublist_chk(_,X,[_|P]):-sublist_chk(X,X,P),
    !.

sublist(X,Y):-sublist_chk(X,X,Y).


