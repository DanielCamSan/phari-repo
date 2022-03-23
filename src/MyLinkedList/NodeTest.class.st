Class {
	#name : #NodeTest,
	#superclass : #TestCase,
	#instVars : [
		'data',
		'next'
	],
	#category : #MyLinkedList
}

{ #category : #'as yet unclassified' }
NodeTest >> testinitialize [
	| aNode |
	aNode := Node new.
	self assert: aNode value  equals:0.
]

{ #category : #'as yet unclassified' }
NodeTest >> testnext [
	| aNode bNode |
	aNode := Node new.
	bNode := Node new.
	aNode next: bNode.
	self assert: aNode next  equals: bNode .
]

{ #category : #'as yet unclassified' }
NodeTest >> testvalue [
	| aNode bNode |
	aNode := Node new.
	aNode value: 78.
	bNode := Node new.
	bNode value: 5.
	self assert: aNode value  equals: 78 .
	self assert: bNode value  equals: 5 .
]
