Class {
	#name : 'RaylibSound',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_FRAMECOUNT',
		'OFFSET_STREAM'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibSound class >> fieldsDesc [
	^#(
		RaylibAudioStream stream;
		uint32 frameCount;
	)
]

{ #category : 'accessing - structure variables' }
RaylibSound >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibSound >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibSound >> stream [
	"This method was automatically generated"
	^ RaylibAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RaylibAudioStream byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibSound >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RaylibAudioStream byteSize
]
