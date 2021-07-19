Class {
	#name : #RaylibRay,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_DIRECTION',
		'OFFSET_POSITION'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
RaylibRay class >> fieldsDesc [ 
	^ #(
	 Vector3 position;
    Vector3 direction;
	)
]

{ #category : #'accessing structure variables' }
RaylibRay >> direction [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_DIRECTION length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
RaylibRay >> direction: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DIRECTION put: anObject getHandle length: Vector3 byteSize
]

{ #category : #'accessing structure variables' }
RaylibRay >> position [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
RaylibRay >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: Vector3 byteSize
]
