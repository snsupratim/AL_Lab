predicates
	male(symbol)
	female(symbol)
	parent(symbol, symbol)
	uncle(symbol, symbol)
	grandson(symbol, symbol)
	brother(symbol, symbol)
	
clauses
	male(raju).
	male(rana).
	male(ranadhir).
	male(rabi).
	male(ratul).
	male(adhir).

	female(radha).
	female(ruma).
	female(rekha).
	female(rai).
	female(romi).

	parent(raju, rai).
	parent(radha, rai).
	parent(raju, rana).
	parent(adhir, romi).
	parent(rai, romi).
	parent(rana, ranadhir).
	parent(rana, rabi).
	parent(ruma, rabi).
	parent(ruma, ranadhir).
	parent(rabi, ratul).
	parent(rekha, ratul).


	uncle(Y, S) :-  , male(Y),parent(Z,X) ,parent(Z,Y),parent(X,S).

	grandson(X, Z) :- male(X), parent(Y, X), parent(Z, Y).

	brother(X,Y) :- male(X), parent(Z,X), parent(Z,Y).