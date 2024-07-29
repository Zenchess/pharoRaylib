Class {
	#name : 'RaylibBoneInfo',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARENT'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibBoneInfo class >> fieldsDesc [
	^#(
		 char32Array name;         
    int parent;   
	)
]

{ #category : 'accessing - structure variables' }
RaylibBoneInfo >> name [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFICharacterType size: 32) fromHandle: (handle copyFrom: OFFSET_NAME to: OFFSET_NAME + 31)
]

{ #category : 'accessing - structure variables' }
RaylibBoneInfo >> name: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_NAME to: OFFSET_NAME + 31 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibBoneInfo >> parent [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARENT
]

{ #category : 'accessing - structure variables' }
RaylibBoneInfo >> parent: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARENT put: anObject
]
