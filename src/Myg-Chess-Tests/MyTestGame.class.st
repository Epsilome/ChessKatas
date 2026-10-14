Class {
	#name : 'MyTestGame',
	#superclass : 'TestCase',
	#instVars : [
		'pieces'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'accessing' }
MyTestGame >> pieces [
    ^ pieces
]

{ #category : 'as yet unclassified' }
MyTestGame >> pieces: anArray [
    pieces := anArray
]
