directTrain(avon, braintree).
directTrain(quincy,avon).
directTrain(newton,boston).
directTrain(boston,avon).
directTrain(braintree,milton).
directTrain(westwood,newton).
directTrain(canton, westwood).

travelBetween(X,Y):-directTrain(X,Y);directTrain(Y,X).
travelBetween(X,Y):-directTrain(X,Z),travelBetween(Z,Y).
travelBetween(Y,X):-directTrain(X,Z),travelBetween(Z,Y).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([G],[E]):-tran(G,E).
listtran([Ga|Gb],[Ea|Eb]):-tran(Ga,Ea),listtran(Gb,Eb).
