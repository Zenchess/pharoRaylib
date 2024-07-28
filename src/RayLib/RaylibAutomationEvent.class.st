Class {
	#name : 'RaylibAutomationEvent',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_FRAME',
		'OFFSET_PARAMS',
		'OFFSET_TYPE'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibAutomationEvent class >> fieldsDesc [
	^#(
	 uint32 frame;            
    uint32 type;              
    int4Array params; 
	)
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> frame [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAME
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> frame: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAME put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> params [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIInt32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> type [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_TYPE
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEvent >> type: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_TYPE put: anObject
]
