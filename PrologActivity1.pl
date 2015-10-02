numeral(0).
numeral(succ(X)):-numeral(X). 			% Recursive.
	
add(0,X,X).								% Base Clause
add(succ(X),Y,succ(Z)):-add(X,Y,Z).		% Recursive Clause

greater_than(succ(_),0).
greater_than(succ(X),succ(Y)):-greater_than(X,Y).