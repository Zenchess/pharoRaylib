Class {
	#name : 'RaylibAudioStream',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_BUFFER',
		'OFFSET_CHANNELS',
		'OFFSET_PROCESSOR',
		'OFFSET_SAMPLERATE',
		'OFFSET_SAMPLESIZE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibAudioStream class >> fieldsDesc [
	^#(
		 RaylibRAudioBufferOpaque *buffer;      
    RaylibRAudioProcessorOpaque *processor;

    uint32 sampleRate;    
    uint32 sampleSize;    
    uint32 channels;   
	)
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> buffer [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BUFFER) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> buffer: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BUFFER put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> channels [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_CHANNELS
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> channels: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_CHANNELS put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> processor [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PROCESSOR) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> processor: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PROCESSOR put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> sampleRate [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLERATE
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> sampleRate: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLERATE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> sampleSize [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_SAMPLESIZE
]

{ #category : 'accessing - structure variables' }
RaylibAudioStream >> sampleSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_SAMPLESIZE put: anObject
]
