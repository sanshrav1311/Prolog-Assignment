# Prolog-Assignment
### To run the program:
Open SWI-Prolog, go to file -> consult and select ‘problem_1.pl’ located in the current folder.

## Problem 1:
Assuming the weighted undirected graph in 'graph.png':

We test the program by writing the queries in SWI-Prolog:

Test case 1 : 
paths from p to r

?- findPath(p, r, Path, L).

output:

L = 25,

Path = [p, q, r]

click ; to show next results
L = 14,

Path = [p, a, b, c, r]

L = 20,

Path = [p, a, r]


Test case 2:  
paths from a to r

?- findPath(a, r, Path, L).

output:

L = 4,

Path = [a, b, c, r]

L = 35,

Path = [a, p, q, r]

L = 10,

Path = [a, r]

## Problem 2 :
To run the program:
Open SWI-Prolog, go to file -> consult and select ‘problem_2.pl’ located in the current folder.

A.	
Test case 1 :  no elements removed 

?-sublist([1,2],[1,2]). 

Output:

True


Test case 2 :  some elements removed

?-sublist([1,2],[0,1,2,3]). 

Output:

True

Test case 3 :  not sublist

?-sublist([1,2],[0,2,1]).

False
 

B.
Test case 1 :  contains one triplicate

?-has_triplicate([1,2,1,2,1,3,4]).

output : 

 1
 
 True

Test case 2 :  no triplicates

?-has_triplicate([1,2,1,2,3,4]). 

output : 

 false

Test case 3 :  contains more than one triplicate

?-has_triplicate([4,1,2,1,4,2,1,3,4]). 

output : 

 4

 true

 1

 true 


C.
Test case 1 :  element in list

?-remove_nth(2,[1,2,3],L).   

output : 

 L=[1,3]

Test case 2 :  element not in range

?-remove_nth(4,[1,2,3],L).   

output : 

 false 
 

D.
Test case 1 :  removing every other element

?-remove_every_other([1,2,3,4,5],L).

 expected output : 
 
 L = [1, 3, 5]

Test case 2 :  

?-remove_every_other([a,b,a,b,a,b],L).

 expected output : 

 L = [a, a, a]   
