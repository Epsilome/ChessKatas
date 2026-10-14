Class {
	#name : 'MyChessBoardTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessBoardTest >> testEmptyBoardContainsEmptyPieces [

	| board |
	board := MyChessBoard empty.

	self assert: board pieces size equals: 64.
	self assert: (board pieces allSatisfy: [ :piece | piece isEmpty ]).
]

{ #category : 'tests' }
MyChessBoardTest >> testEmptyBoardDoesNotContainNilPieces [

	| board |
	board := MyChessBoard empty.

	self deny: (board pieces anySatisfy: [ :piece | piece isNil ])
]

{ #category : 'tests' }
MyChessBoardTest >> testSquareContentsIsAnEmptyPiece [

	| board square |
	board := MyChessBoard empty.
	square := board at: 'a1'.

	self assert: square contents isEmpty.
	self deny: square contents isPiece.
]
