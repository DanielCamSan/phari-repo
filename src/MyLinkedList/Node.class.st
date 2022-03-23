Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #MyLinkedList
}

{ #category : #initialization }
Node >> initialize [
	super initialize.
	data := 0
]

{ #category : #accessing }
Node >> next [
	^ next
]

{ #category : #accessing }
Node >> next: aNode [
	next := aNode
]

{ #category : #accessing }
Node >> value [
	^ data
]

{ #category : #accessing }
Node >> value: aNumber [
	data := aNumber
]
