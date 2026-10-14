Class {
	#name : 'MyUnselectedStateTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyUnselectedStateTest >> testClickingEmptySquareDoesNotAskEmptyPieceForMoves [

	| board square state |
	board := MyChessBoard empty.
	square := board at: 'e4'.

	state := MyUnselectedState board: board.
	state clickOn: square
]

{ #category : 'tests' }
MyUnselectedStateTest >> testClickingEmptySquareSelectsIt [

	| board square state newState |
	board := MyChessBoard empty.
	square := board at: 'e4'.

	state := MyUnselectedState board: board.
	newState := state clickOn: square.

	self assert: newState class equals: MySelectedState.
	self assert: newState selection identicalTo: square
]
