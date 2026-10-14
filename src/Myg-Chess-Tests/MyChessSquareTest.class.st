Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testBlackPawnStillUsesItsRenderingProtocol [

	| pawn square |
	pawn := MyPawn black.
	square := MyChessSquare white.

	self assert: (pawn renderPieceOn: square) equals: 'O'
]

{ #category : 'tests' }
MyChessSquareTest >> testBlackSquareRendersEmptySquareAsX [

	| square |
	square := MyChessSquare black.

	self assert: (square renderEmpty: MyEmptyPiece new) equals: 'x'
]

{ #category : 'tests' }
MyChessSquareTest >> testEmptyPieceDelegatesRenderingToSquare [

	| emptyPiece |
	emptyPiece := MyEmptyPiece new.

	self assert: (emptyPiece renderPieceOn: MyChessSquare white) equals: 'z'.
	self assert: (emptyPiece renderPieceOn: MyChessSquare black) equals: 'x'
]

{ #category : 'tests' }
MyChessSquareTest >> testPawnStillUsesItsRenderingProtocol [

	| pawn square |
	pawn := MyPawn white.
	square := MyChessSquare white.

	self assert: (pawn renderPieceOn: square) equals: 'P'
]

{ #category : 'tests' }
MyChessSquareTest >> testWhiteSquareRendersEmptySquareAsZ [

	| square |
	square := MyChessSquare white.

	self assert: (square renderEmpty: MyEmptyPiece new) equals: 'z'
]
