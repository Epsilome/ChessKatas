Class {
	#name : 'MySelectedStateTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MySelectedStateTest >> testClickingWhenSelectedSquareIsEmptyDoesNotMove [

	| board selectedSquare targetSquare state |
	board := MyChessBoard empty.

	selectedSquare := board at: 'e4'.
	targetSquare := board at: 'e5'.

	state := MySelectedState board: board selected: selectedSquare.
	state clickOn: targetSquare
]

{ #category : 'tests' }
MySelectedStateTest >> testEmptySelectionReturnsToUnselectedState [

	| board selectedSquare targetSquare state newState |
	board := MyChessBoard empty.

	selectedSquare := board at: 'e4'.
	targetSquare := board at: 'e5'.

	state := MySelectedState
		board: board
		selected: selectedSquare.

	newState := state clickOn: targetSquare.

	self assert: newState class equals: MyUnselectedState
]
