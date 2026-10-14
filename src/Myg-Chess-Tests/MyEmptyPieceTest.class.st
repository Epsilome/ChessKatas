Class {
	#name : 'MyEmptyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceHasNoTargetSquares [

	| emptyPiece |
	emptyPiece := MyEmptyPiece new.

	self assert: emptyPiece targetSquares isEmpty.
	self assert: emptyPiece legalTargetSquares isEmpty.
]

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceIsEmpty [

	| emptyPiece |
	emptyPiece := MyEmptyPiece new.

	self assert: emptyPiece isEmpty
]

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceIsNotAPiece [

	| emptyPiece |
	emptyPiece := MyEmptyPiece new.

	self deny: emptyPiece isPiece
]

{ #category : 'tests' }
MyEmptyPieceTest >> testEmptyPieceUnderstandsPieceProtocol [

	| emptyPiece |
	emptyPiece := MyEmptyPiece new.

	self assert: emptyPiece isEmpty.
	self deny: emptyPiece isPiece.
	self assert: emptyPiece targetSquares isEmpty.
	self assert: emptyPiece legalTargetSquares isEmpty.
]

{ #category : 'tests' }
MyEmptyPieceTest >> testRealPieceIsPieceAndNotEmpty [

	| pawn |
	pawn := MyPawn white.

	self assert: pawn isPiece.
	self deny: pawn isEmpty
]
