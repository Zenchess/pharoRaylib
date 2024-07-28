Class {
	#name : 'RaylibAutomationEventList',
	#superclass : 'FFIStructure',
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
