Class {
	#name : 'RaylibCamera2D',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibCamera2D class >> fieldsDesc [
	^ #(
		RaylibVector2 offset;         
    RaylibVector2 target;         
    float rotation;        
    float zoom;
		)
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> offset [
	"This method was automatically generated"
	^ RaylibVector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: RaylibVector2 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: RaylibVector2 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> target [
	"This method was automatically generated"
	^ RaylibVector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RaylibVector2 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RaylibVector2 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : 'accessing - structure variables' }
RaylibCamera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
