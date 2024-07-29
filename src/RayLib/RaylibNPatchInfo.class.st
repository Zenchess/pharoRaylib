Class {
	#name : 'RaylibNPatchInfo',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LAYOUT',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_SOURCE',
		'OFFSET_TOP'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibNPatchInfo class >> fieldsDesc [
	^ #(
			RaylibRectangle source;      
    int left;               
    int top;               
    int right;              
    int bottom;             
    int layout;            
		)
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> bottom [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BOTTOM
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> bottom: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BOTTOM put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> layout [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LAYOUT
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> layout: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LAYOUT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> left [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_LEFT
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> left: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_LEFT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> right [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_RIGHT
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> right: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_RIGHT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> source [
	"This method was automatically generated"
	^ RaylibRectangle fromHandle: (handle referenceStructAt: OFFSET_SOURCE length: RaylibRectangle byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> source: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SOURCE put: anObject getHandle length: RaylibRectangle byteSize
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> top [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TOP
]

{ #category : 'accessing - structure variables' }
RaylibNPatchInfo >> top: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TOP put: anObject
]
