

/*
loves is a predicate
a is an atom(anything that starts with lower case is an atom(a defined constant))
B is a variable(anything with an uppercase first letter is a variable)
*/

/*
These are just facts
love has "arity" 2(it contains 2 arguements)
*/

loves(kieran,Variable). 	/*I love everyting*/
loves(X, raymond).			/*Everybody loves raymond HAHAHAHA GET IT?!?!?*/
loves(john,bill).			/*john loves bill */
loves(john,susan).			/*john loves susan*/
loves(bill,susan).			/*bill loves susan*/
loves(bill,bosco).			/*bill loves bosco*/
loves(bill,mary).			/*bill loves mary */
loves(susan,john).			/*susan loves john*/



man(kieran).
man(me).
man(me).
man(brendan).

woman(katherine).
woman(susan).

/*
 if X and Y love eachother the also hate eachother
:- means implication. P:-Q.     Read as: if Q then P
, means and.          P,Q. 			Read as: P and Q.
; means or.           P;Q. 			Read as: P or Q
*/
hates(X,Y):-loves(X,Y).
/* If both parties love eachother */
true_love(X,Y):-loves(X,Y),loves(Y,X).
/*Jealousy*/
jealousy(X,Y,Z):-loves(X,Z),loves(Y,Z);loves(Z,X),loves(Z,Y).

/*
  [Head|Tail]
	is X a member of this list {Y folowed by Z}
	is X=Y? we're done
	if not, then check to see if X is a member of the list Z
*/
member(X,[Y|Z]):-X=Y;member(X,Z)

/*this is also a fact*/

name_of_predicate(SomeVariable,AnotherVariable,howAboutAConstant).



f(a).
f(b).
g(a).
g(b).
h(a).
k(X):-f(X),g(X),h(X).

/*Child(X,Y) means X is the descendant of Y*/
child(anna,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

/*Recursion Example*/
member(X,[Y|Z]):-X=Y; member(X,Z).

/*descend(X,Y) means X is the descendant of Y*/
descend(X,Y):-child(X,Y).
descend(X,Y):-child(X,Z),child(Z,Y).
descend(X,Z):-child(X,Y),descend(Y,Z).
