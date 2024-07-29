Class {
	#name : 'RaylibBoundingBox',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_MIN'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibBoundingBox class >> fieldsDesc [
	^#(
		 RaylibVector3 min;           
    	RaylibVector3 max;
	)
]

{ #category : 'accessing - structure variables' }
RaylibBoundingBox >> max [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_MAX length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibBoundingBox >> max: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAX put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibBoundingBox >> min [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_MIN length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibBoundingBox >> min: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MIN put: anObject getHandle length: RaylibVector3 byteSize
]
