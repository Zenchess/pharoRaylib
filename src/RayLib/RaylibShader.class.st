Class {
	#name : 'RaylibShader',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_ID',
		'OFFSET_LOCS'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibShader class >> fieldsDesc [
	^#(
	uint32 id;       
    int *locs;  
	)
]

{ #category : 'accessing - structure variables' }
RaylibShader >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : 'accessing - structure variables' }
RaylibShader >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibShader >> locs [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LOCS) type: ExternalType long asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibShader >> locs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LOCS put: anObject getHandle.
]
