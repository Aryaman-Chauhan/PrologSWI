remove_nth(1,[_|T],T).
remove_nth(P,[X|Y],[X|R]):-
 P1 is P-1,
 remove_nth(P1,Y,R).
