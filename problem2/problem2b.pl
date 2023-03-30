has_member(X,[_|T]):-has_member(X,T).
has_member(X,[X|_]):-!.

has_duplicate(H,[H|T]):-has_member(H,T),!.
has_duplicate(H,[_|T]):-has_duplicate(H,T).

has_triplicate([H|T]):-has_duplicate(H,T),
    write(H),write(" has atleast 3 copies"),nl.
has_triplicate([_|T]):-has_triplicate(T).
