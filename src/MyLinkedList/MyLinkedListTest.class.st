Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testIsEmpty [
	| linkedlist |
	linkedlist := MyLinkedList new.
	self assert: linkedlist isEmpty.
	linkedlist pushBack: 3.
	self deny: linkedlist isEmpty
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testPushAt [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist push: 5 at:  1.
	self assert: linkedlist linksize equals: 1.
	self assert: linkedlist head value equals: 5.
	linkedlist push: 3 at:  2.
	self assert: linkedlist linksize equals: 2.
	self assert: linkedlist head value equals: 5.
	linkedlist push: 1 at:  1.
	self assert: linkedlist linksize equals: 3.
	self assert: linkedlist head value equals: 1.



]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testfind [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist pushBack: 6.
	self assert: (linkedlist find: 6).
	self deny: (linkedlist find: 8).
	linkedlist pushBack: 8.
	self assert: (linkedlist find: 8).
	linkedlist pushFront: 10.
	self assert: (linkedlist find: 10).


]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testhead [
	| linkedlist |
	linkedlist := MyLinkedList new.
	self assert: linkedlist head isNil.
	linkedlist pushBack: 3.
	self assert: linkedlist  head value equals:3.
	linkedlist pushFront: 5.
	self assert: linkedlist  head value equals:5.
	linkedlist pushBack: 7.
	self assert: linkedlist  head value equals:5.
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testinitialize [
	| linkedlist |
	linkedlist := MyLinkedList new.
	self assert: linkedlist isEmpty.
	self assert: linkedlist linksize equals: 0
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testlinksize [
	| linkedlist |
	linkedlist := MyLinkedList new.
	self assert: linkedlist linksize equals: 0.
	linkedlist pushBack: 3.
	self assert: linkedlist linksize equals: 1.
	linkedlist pushFront: 5.
	self assert: linkedlist linksize equals: 2.
	linkedlist pushBack: 7.
	self assert: linkedlist linksize equals: 3.
]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testpushback [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist pushBack: 6.
	self assert: linkedlist linksize equals: 1.
	linkedlist pushBack: 8.
	self assert: linkedlist linksize equals: 2.
	self assert: linkedlist tail value equals: 8.

]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testpushfront [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist pushFront:  6.
	self assert: linkedlist linksize equals: 1.
	self assert: linkedlist head value equals: 6.
	linkedlist pushFront: 8.
	self assert: linkedlist linksize equals: 2.
	self assert: linkedlist head value equals: 8.

]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testremovefirstnode [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist pushBack: 6.
	self assert: linkedlist linksize equals: 1.
	linkedlist pushBack: 8.
	self assert: linkedlist linksize equals: 2.
	linkedlist removeLastNode  .
	self assert: linkedlist linksize equals: 1.
	linkedlist removeLastNode .
	self assert: linkedlist isEmpty  equals: true.

]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testremovelastnode [
	| linkedlist |
	linkedlist := MyLinkedList new.
	linkedlist pushBack: 6.
	self assert: linkedlist linksize equals: 1.
	self assert: linkedlist tail value equals: 6.
	linkedlist pushBack: 8.
	self assert: linkedlist linksize equals: 2.
	linkedlist removeLastNode.
	self assert: linkedlist linksize equals: 1.
	self assert: linkedlist tail value equals: 6.


]

{ #category : #'as yet unclassified' }
MyLinkedListTest >> testtail [
	| linkedlist |
	linkedlist := MyLinkedList new.
	self assert: linkedlist tail isNil.
	linkedlist pushBack: 3.
	self assert: linkedlist  tail value equals:3.
	linkedlist pushFront: 5.
	self assert: linkedlist  tail value equals:3.
	linkedlist pushBack: 7.
	self assert: linkedlist tail value equals:7.
]
