Class {
	#name : #Shader,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_ID',
		'OFFSET_LOCS'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
Shader class >> fieldsDesc [ 
	^ #(
	 uint id;
    int *locs;
	)
]

{ #category : #'accessing structure variables' }
Shader >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing structure variables' }
Shader >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing structure variables' }
Shader >> locs [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LOCS) type: ExternalType long asPointerType
]

{ #category : #'accessing structure variables' }
Shader >> locs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LOCS put: anObject getHandle.
]
