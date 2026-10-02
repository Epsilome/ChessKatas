Class {
	#name : 'MyEmptyPiece',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyEmptyPiece >> isEmpty [
    ^ true
]

{ #category : 'testing' }
MyEmptyPiece >> isPiece [
    ^ false
]

{ #category : 'as yet unclassified' }
MyEmptyPiece >> legalMoves [
    ^ #()
]

{ #category : 'rendering' }
MyEmptyPiece >> renderPieceOn: aSquare [

    ^ aSquare renderEmpty: self
]
