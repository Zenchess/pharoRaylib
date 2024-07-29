Class {
	#name : 'RaylibCamera3D',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_FOVY',
		'OFFSET_POSITION',
		'OFFSET_PROJECTION',
		'OFFSET_TARGET',
		'OFFSET_UP'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibCamera3D class >> fieldsDesc [
	^ #(
		RaylibVector3 position;      
    RaylibVector3 target;        
    RaylibVector3 up;            
    float fovy;            
    int projection;   
		)
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> fovy [
	"This method was automatically generated"
	^handle floatAt: OFFSET_FOVY
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> fovy: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_FOVY put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> position [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> projection [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROJECTION
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> projection: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROJECTION put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> target [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RaylibVector3 byteSize
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> up [
	"This method was automatically generated"
	^ RaylibVector3 fromHandle: (handle referenceStructAt: OFFSET_UP length: RaylibVector3 byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibCamera3D >> up: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_UP put: anObject getHandle length: RaylibVector3 byteSize
]
