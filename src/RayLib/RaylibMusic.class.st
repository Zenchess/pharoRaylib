Class {
	#name : 'RaylibMusic',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CTXDATA',
		'OFFSET_CTXTYPE',
		'OFFSET_FRAMECOUNT',
		'OFFSET_LOOPING',
		'OFFSET_STREAM'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMusic class >> fieldsDesc [
	^ #(
	 RaylibAudioStream stream;        
    uint32 frameCount;    
    bool looping;               

    int ctxType;                
    void *ctxData;  
	)
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> ctxData [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_CTXDATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> ctxData: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_CTXDATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> ctxType [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CTXTYPE
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> ctxType: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CTXTYPE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> frameCount [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> frameCount: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> looping [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_LOOPING
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> looping: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_LOOPING put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> stream [
	"This method was automatically generated"
	^ RaylibAudioStream fromHandle: (handle referenceStructAt: OFFSET_STREAM length: RaylibAudioStream byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibMusic >> stream: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_STREAM put: anObject getHandle length: RaylibAudioStream byteSize
]
