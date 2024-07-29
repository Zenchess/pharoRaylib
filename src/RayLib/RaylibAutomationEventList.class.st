Class {
	#name : 'RaylibAutomationEventList',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CAPACITY',
		'OFFSET_COUNT',
		'OFFSET_EVENTS'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibAutomationEventList class >> fieldsDesc [
	^#(
		uint32 capacity;          
    uint32 count;            
    RaylibAutomationEvent *events;
	)
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> capacity [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CAPACITY
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> capacity: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CAPACITY put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> count [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_COUNT
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> count: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_COUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> events [
	"This method was automatically generated"
	^RaylibAutomationEvent fromHandle: (handle pointerAt: OFFSET_EVENTS)
]

{ #category : 'accessing - structure variables' }
RaylibAutomationEventList >> events: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_EVENTS put: anObject getHandle.
]
