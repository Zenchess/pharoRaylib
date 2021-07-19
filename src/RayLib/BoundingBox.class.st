Class {
	#name : #BoundingBox,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_MAX',
		'OFFSET_MIN'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
BoundingBox class >> fieldsDesc [ 
	^ #(
	 Vector3 min;
    Vector3 max;
	)
]

{ #category : #'accessing structure variables' }
BoundingBox >> max [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_MAX length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
BoundingBox >> max: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MAX put: anObject getHandle length: Vector3 byteSize
]

{ #category : #'accessing structure variables' }
BoundingBox >> min [
	"This method was automatically generated"
	^ Vector3 fromHandle: (handle referenceStructAt: OFFSET_MIN length: Vector3 byteSize)
]

{ #category : #'accessing structure variables' }
BoundingBox >> min: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_MIN put: anObject getHandle length: Vector3 byteSize
]
