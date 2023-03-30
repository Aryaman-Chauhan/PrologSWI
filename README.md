# PrologSWI Problems
Prolog is a tool which has Logical Statements, which it solves using Resolution Refutation Method.

Here, I have dealt with two Problems, seperated into folders, with the following problem statement.
- Problem 1: 

    Given a weighted undirected graph `G = (V, E)`. The weight on an edge (`v`<sub>`1`</sub>, `v`<sub>`2`</sub>) represents the distance between the vertices `v`<sub>`1`</sub> and `v`<sub>`2`</sub> {`v`<sub>`i`</sub> `∈` `V`; and (`v`<sub>`i`</sub>, `v`<sub>`j`</sub>) `∈` `E`}. Given a set of weights of edges in the form of  prolog clauses:
    - `weight(p, q, 20).`
    - `weight(q, r, 5).`

    Write a prolog program to check if there exists a path between two given vertices. Print the path and its length, if it exists. For example:

    `?- findPath(p, r, Path, L).`

    the prolog interpreter should print:
    - `Path = [p, q, r]`
    - `L = 25`

    Note that the user should print an alternative path if it exists on each press of a semi colon and print no if no path exists. Your program should avoid traversing through cycles, if any.
- Problem 2: 

    Write a Prolog predicate for each of the following operations on a list:
    
    a) `sublist(X,Y)`: true if list `X` is a sublist of list `Y`. A sublist is the original list, in the same order, but with no/some elements removed. 
    
    b) `has_triplicate(X)`: true if list `X` contains at least three copies of an element. It also prints the element which is triplicated.
    
    c) `remove_nth(N,X,Y)`: prints list `Y` which is the list `X` with its `N` ,<sup>th</sup> element removed. If `X` does not have an `N` <sup>th</sup> element then the predicate should fail. Assume that `N` > 0 .
    
    d) `remove_every_other(X,Y)`: prints a list `Y` which is the list `X` with every other element removed (the two lists should have the same first element). 

    Note: Each predicate should be able to print the alternative solutions if they exist.