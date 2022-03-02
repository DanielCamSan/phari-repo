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
Node >> getNext [
	^ next
]

{ #category : #initialization }
Node >> getValue [
	^ data
]

{ #category : #initialization }
Node >> initialize [
	data := 0.
	
	
]

{ #category : #initialization }
Node >> setNext: nex [
	next:=nex
]

{ #category : #initialization }
Node >> setValu: valu [
	data:= valu
]
