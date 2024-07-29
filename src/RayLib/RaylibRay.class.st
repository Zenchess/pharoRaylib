Class {
	#name : 'RaylibRay',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_DIRECTION',
		'OFFSET_POSITION'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRay class >> fieldsDesc [
	^#(
	RaylibVector3 position;       
    RaylibVector3 direction;
	)
]

{ #category : 'accessing - structure variables' }
RaylibRay >> direction [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_DIRECTION length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRay >> direction: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DIRECTION put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibRay >> position [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRay >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RaylibVector3 byteSize
]
