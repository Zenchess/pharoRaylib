Class {
	#name : 'RaylibFilePathList',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CAPACITY',
		'OFFSET_COUNT',
		'OFFSET_PATHS'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibFilePathList class >> fieldsDesc [
	^#(
	uint32 capacity;          
    uint32 count;             
    char **paths; 
	)
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> capacity [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CAPACITY
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> capacity: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CAPACITY put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> count [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_COUNT
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> count: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> paths [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PATHS) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibFilePathList >> paths: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PATHS put: anObject getHandle.
]
