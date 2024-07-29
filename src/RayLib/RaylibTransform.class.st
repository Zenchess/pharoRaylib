Class {
	#name : 'RaylibTransform',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_ROTATION',
		'OFFSET_SCALE',
		'OFFSET_TRANSLATION'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibTransform class >> fieldsDesc [
	^ #(
			RaylibVector3 translation;   
    RaylibVector4 rotation;    
    RaylibVector3 scale; 
		)
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> rotation [
	"This method was automatically generated"
	^ RaylibVector4 fromHandle: (handle referenceStructAt: OFFSET_ROTATION length: RaylibVector4 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> rotation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_ROTATION put: anObject getHandle length: RaylibVector4 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> scale [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_SCALE length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> scale: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SCALE put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> translation [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_TRANSLATION length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibTransform >> translation: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSLATION put: anObject getHandle length: RaylibVector3 byteSize
]
