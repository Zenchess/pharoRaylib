Class {
	#name : 'RaylibVector2',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibVector2 class >> fieldsDesc [
	^ #(
		 float x;                
   		 float y;                
		)
]

{ #category : 'accessing - structure variables' }
RaylibVector2 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : 'accessing - structure variables' }
RaylibVector2 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVector2 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : 'accessing - structure variables' }
RaylibVector2 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
