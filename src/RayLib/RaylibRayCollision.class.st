Class {
	#name : 'RaylibRayCollision',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_DISTANCE',
		'OFFSET_HIT',
		'OFFSET_NORMAL',
		'OFFSET_POINT'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRayCollision class >> fieldsDesc [
	^#(
		 bool hit;             
    float distance;        
    RaylibVector3 point;         
    RaylibVector3 normal; 
	)
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> hit [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HIT
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> hit: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HIT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> normal [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> point [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_POINT length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRayCollision >> point: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POINT put: anObject getHandle length: RaylibVector3 byteSize
]
