Class {
	#name : #MyLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'linksize'
	],
	#category : #MyLinkedList
}

{ #category : #adding }
MyLinkedList >> addLLNode: valu [
	| newNode last |
	newNode := Node new setValu: valu.
	head
		ifNil: [ head := newNode.
			linksize := linksize + 1 ]
		ifNotNil: [ :arg | 
			last := head.
			[ last getNext isNotNil ] whileTrue: [ last := last getNext ].
			linksize := linksize + 1.
			last setNext: newNode ]
]

{ #category : #initialization }
MyLinkedList >> find: valu [
	| nod |
	
	nod:=head.
	(valu == nod getValue) ifTrue: [ ^ true ].
	[ nod getNext isNotNil  ] whileTrue: 
	[ (valu == nod getValue) ifTrue: [ ^ true ]
		ifFalse:[ nod:= nod getNext ]
	 ].
	^ false
]

{ #category : #accessing }
MyLinkedList >> head [
	^ head
]

{ #category : #initialization }
MyLinkedList >> initialize [ 
	super initialize.
	linksize := 0
]

{ #category : #initialization }
MyLinkedList >> isEmpty [ 
	^ linksize == 0
]

{ #category : #initialization }
MyLinkedList >> linksize [
	^ linksize
]

{ #category : #adding }
MyLinkedList >> pushFront: value [
	| noden |
	linksize := linksize + 1.
	noden:= Node new:value.
	noden setNext:head.
	head:= noden.

]

{ #category : #removing }
MyLinkedList >> removeLastNode [
	| newNode |
	newNode := head.
	head ifNil: [ ^ nil ].
	head getNext ifNil: [ linksize := linksize - 1. head:= nil. ^ nil ].
	[ newNode getNext getNext isNotNil  ] whileTrue:
	[ newNode:= newNode getNext ].
	linksize := linksize - 1. 
	newNode setNext: nil.
	^ head
]

{ #category : #printing }
MyLinkedList >> showLL [
	| newNode |
	newNode := head.
	[ newNode getNext  isNotNil  ] whileTrue:
	[ Transcript  show: newNode getValue; cr. newNode :=newNode getNext ].
	 Transcript  show: newNode getValue; cr.
]
