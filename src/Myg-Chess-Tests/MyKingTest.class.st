Class {
	#name : 'MyKingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingTest >> testIsCheckByOpponentsRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an atacker rook on e column"
	board at: 'e1' put: MyRook black.

	self assert: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testIsNotCheckBySameColorRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an same color rook on e column"
	board at: 'e1' put: MyRook white.

	self deny: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testOpponentPiecesDoesNotIncludeEmptyPieces [

	| board king whitePawn blackPawn |
	board := MyChessBoard empty.

	king := MyKing white.
	whitePawn := MyPawn white.
	blackPawn := MyPawn black.

	board
		at: 'e1' put: king;
		at: 'd2' put: whitePawn;
		at: 'd7' put: blackPawn.

	self assert: (king opponentPieces size) equals: 1.
	self assert: king opponentPieces first identicalTo: blackPawn.
]
