/* a) sublist(X,Y) */

%% try to match fist element of both lists, if they dont match move on to the next element
sublist( [H|T], [H1|T1] ) :- 
    H \= H1,
    sublist( [H|T], T1 ).
%once first element matches, the rest has to match otherwise fail.
sublist( [H|T], [H|T1] ) :- 
   match_rest_elements(T,T1).
match_rest_elements([H|T1],[H|T2]):-
    match_rest_elements(T1,T2).
match_rest_elements([],_).   
    

/* b) has_triplicate(X)  */

%here we use findall to get all elements that are the same as the head, 
%if the result list length is 3 or more the function should succeed else move on to the next position
has_triplicate([H|T]):- findall(H,member(H,[H|T]),L),
    					length(L,N),
    					N>=3,writeln(H);
    					has_triplicate(T).
    					
    
 
/* c) remove_nth(N,X,Y) */

%if N>1 we add elements from X to Y and reduce N by 1
remove_nth(N,[H|T],[H|T2]):-
    N>1,
    M is N-1,
    remove_nth(M,T,T2).
%when we reach N=1 , we found the element we should remove, we don't add it to the list.
remove_nth(1,[_|T],T).

 
/* d) remove_every_other(X,Y) */

% we remove every second element H2 to get the desired result
remove_every_other([H1,_|T],[H1|T1]):-
    remove_every_other(T,T1).
remove_every_other([H],[H]).
remove_every_other([],[]).
