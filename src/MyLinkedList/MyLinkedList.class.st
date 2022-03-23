Class {
	#name : #MyLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail',
		'linksize'
	],
	#category : #MyLinkedList
}

{ #category : #operation }
MyLinkedList >> find: aNumber [
	| node |
	node := head.
	aNumber == node value
		ifTrue: [ ^ true ].
	[ node next isNotNil ]
		whileTrue: [ aNumber == node value
				ifTrue: [ ^ true ]
				ifFalse: [ node := node next ] ].
	aNumber == node value
		ifTrue: [ ^ true ].
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

{ #category : #operation }
MyLinkedList >> isEmpty [
	^ linksize == 0
]

{ #category : #accessing }
MyLinkedList >> linksize [
	^ linksize
]

{ #category : #adding }
MyLinkedList >> push: aNumber at: aPosition [
	| node newNode nextNode |
	(aPosition == 1)
		ifTrue: [ self pushFront: aNumber.
				^ head ];
		ifFalse: [ (aPosition == (self linksize + 1))
					ifTrue: [ self pushBack: aNumber.
							^ head ];
					ifFalse: [ linksize := linksize + 1.
							node := head.
							aPosition - 2 timesRepeat: [ node := node next ].
							nextNode := node next.
							newNode := Node new value: aNumber.
							newNode next: nextNode.
							node next: newNode ] ]
]

{ #category : #adding }
MyLinkedList >> pushBack: aNumber [
	| node |
	linksize := linksize + 1.
	node := Node new value: aNumber.
	tail
		ifNil: [ head := node.
			tail := node.
			^ head ].
	tail next: node.
	tail := node
]

{ #category : #adding }
MyLinkedList >> pushFront: aNumber [
	| node |
	linksize := linksize + 1.
	node := Node new value: aNumber.
	node next: head.
	head ifNil: [ tail := node ].
	head := node
]

{ #category : #removing }
MyLinkedList >> removeFirstNode [
	head ifNil: [ ^ nil ].
	head next
		ifNil: [ linksize := linksize - 1.
			head := nil.
			^ nil ].
	head := head next.
	^ head
]

{ #category : #removing }
MyLinkedList >> removeLastNode [
	| newNode |
	newNode := head.
	head ifNil: [ ^ nil ].
	head next
		ifNil: [ linksize := linksize - 1.
			head := nil.
			tail := nil.
			^ nil ].
	[ newNode next == tail ] whileFalse: [ newNode := newNode next ].
	linksize := linksize - 1.
	newNode next: nil.
	tail := newNode.
	^ head
]

{ #category : #printing }
MyLinkedList >> showLL [
	| newNode |
	newNode := head.
	[ newNode == tail ]
		whileFalse: [ Transcript
				show: newNode value;
				cr.
			newNode := newNode next ].
	Transcript
		show: newNode value;
		cr
]

{ #category : #accessing }
MyLinkedList >> tail [
	^ tail
]
