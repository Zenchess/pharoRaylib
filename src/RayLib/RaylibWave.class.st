Class {
	#name : 'RaylibWave',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CHANNELS',
		'OFFSET_DATA',
		'OFFSET_FRAMECOUNT',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibWave class >> fieldsDesc [
	^#(
		uint32 frameCount;    
    uint32 sampleRate;    
    uint32 sampleSize;    
    uint32 channels;      
    void *data; 
	)
]

{ #category : 'accessing - structure variables' }
RaylibWave >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : 'accessing - structure variables' }
RaylibWave >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibWave >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibWave >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibWave >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibWave >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibWave >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : 'accessing - structure variables' }
RaylibWave >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibWave >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : 'accessing - structure variables' }
RaylibWave >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
