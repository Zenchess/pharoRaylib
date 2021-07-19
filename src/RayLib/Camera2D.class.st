Class {
	#name : #Camera2D,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
Camera2D class >> fieldsDesc [ 
	^ #(
	Vector2 offset;
	Vector2 target;
	float rotation;
	float zoom;	
	)
]

{ #category : #'accessing structure variables' }
Camera2D >> offset [
	"This method was automatically generated"
	^ Vector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: Vector2 byteSize)
]

{ #category : #'accessing structure variables' }
Camera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: Vector2 byteSize
]

{ #category : #'accessing structure variables' }
Camera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : #'accessing structure variables' }
Camera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : #'accessing structure variables' }
Camera2D >> target [
	"This method was automatically generated"
	^ Vector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: Vector2 byteSize)
]

{ #category : #'accessing structure variables' }
Camera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: Vector2 byteSize
]

{ #category : #'accessing structure variables' }
Camera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : #'accessing structure variables' }
Camera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
