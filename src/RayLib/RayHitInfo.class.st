Class {
	#name : #RayHitInfo,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_DISTANCE',
		'OFFSET_HIT',
		'OFFSET_NORMAL',
		'OFFSET_POSITION'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
RayHitInfo class >> fieldsDesc [ 
	^ #(
	  bool hit; 
    float distance;
	Vector3 position;
	Vector3 normal;
	)
]

{ #category : #'accessing structure variables' }
RayHitInfo >> distance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_DISTANCE
]

{ #category : #'accessing structure variables' }
RayHitInfo >> distance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_DISTANCE put: anObject
]

{ #category : #'accessing structure variables' }
RayHitInfo >> hit [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_HIT
]

{ #category : #'accessing structure variables' }
RayHitInfo >> hit: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_HIT put: anObject
]

{ #category : #'accessing structure variables' }
RayHitInfo >> normal [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_NORMAL length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
RayHitInfo >> normal: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_NORMAL put: anObject getHandle length: Vector3 byteSize
]

{ #category : #'accessing structure variables' }
RayHitInfo >> position [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
RayHitInfo >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: Vector3 byteSize
]
