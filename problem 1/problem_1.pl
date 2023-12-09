weight(p, q, 20).
weight(q, r, 5).
weight(p, a, 10).
weight(a, r, 10).
weight(a, b, 1).
weight(b, c, 1).
weight(c, r, 2).

%% to avoid traversing through cycles we defined notin to check 
notin(_,[]):-!.
notin(E,[H|T]):-
    E \= H,
    notin(E,T).

%% introducing another List (Prev) contains path history to avoid traversing through cycles using notin predicate
findPath(Start,Finish, [Start,Next|T], L):-
    findPath2(Start,Finish, [Start,Next|T], L,[]).
findPath2(Start,Finish, [Start,Next|T], L,Prev):-
     (    weight(Start,Next,N), notin(Next,Prev) 
    ;  weight(Next,Start,N), notin(Next,Prev) ),
    append([Start,Next],Prev,X),
    findPath2(Next, Finish, [Next|T], L1,X),
    L is L1 + N.
findPath2(Start, Finish, [Start,Finish], N,Prev):-
    (   weight(Start,Finish,N),notin(Finish,Prev)
    ; weight(Finish,Start,N), notin(Finish,Prev)).


