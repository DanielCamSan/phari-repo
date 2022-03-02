Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testEmpty [
	| m |
	m := MyLinkedList new.
	self assert: (m isEmpty) equals: true.
	m addLLNode: 6.
	self assert: (m isEmpty) equals: false.
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testMyLinkedListAddingIsOk [
	| m |
	m := MyLinkedList new.
	m addLLNode: 6.
	self assert: m linksize equals: 1.
	m addLLNode: 8.
	self assert: m linksize equals: 2.

]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testMyLinkedListInitializationIsOk [
	| m |
	m := MyLinkedList new.
	self assert: m linksize equals: 0.
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testMyLinkedListRemovingIsOk [
	| m |
	m := MyLinkedList new.
	m addLLNode: 6.
	self assert: m linksize equals: 1.
	m addLLNode: 8.
	self assert: m linksize equals: 2.
	m removeLastNode  .
	self assert: m linksize equals: 1.
	m removeLastNode .
	self assert: m isEmpty  equals: true.

]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testfindLLNode [
	| m |
	m := MyLinkedList new.
	m addLLNode: 6.
	m addLLNode: 8.
	self assert: (m find: 6) equals: true.
	self assert: (m find: 3) equals: false.
]
