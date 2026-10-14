Class {
	#name : 'MyPlayerTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'accessing' }
MyPlayerTest >> pieces [
	| pieces |
	^ pieces
]

{ #category : 'as yet unclassified' }
MyPlayerTest >> pieces: aCollection [
	| pieces |
	pieces := aCollection
]

{ #category : 'tests' }
MyPlayerTest >> testBlackPlayerGetsOnlyBlackPieces [

    | game player whitePawn blackPawn emptyPiece |
    game := MyTestGame new.

    whitePawn := MyPawn white.
    blackPawn := MyPawn black.
    emptyPiece := MyEmptyPiece new.

    game pieces: {
        whitePawn.
        blackPawn.
        emptyPiece
    }.

    player := MyPlayer new.
    player
        color: Color black;
        game: game.

    self assert: player pieces size equals: 1.
    self assert: player pieces first identicalTo: blackPawn
]

{ #category : 'tests' }
MyPlayerTest >> testPiecesContainsOnlyPiecesOfPlayersColor [

    | game player whitePawn blackPawn emptyPiece |
    game := MyTestGame new.

    whitePawn := MyPawn white.
    blackPawn := MyPawn black.
    emptyPiece := MyEmptyPiece new.

    game pieces: {
        whitePawn.
        blackPawn.
        emptyPiece
    }.

    player := MyPlayer new.
    player
        color: Color white;
        game: game.

    self assert: player pieces size equals: 1.
    self assert: player pieces first identicalTo: whitePawn
]
