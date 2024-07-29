Class {
	#name : 'RaylibRenderTexture',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRenderTexture class >> fieldsDesc [
	^ #(
		uint32 id;        
    RaylibTexture texture;        
    RaylibTexture depth;          
	)
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> depth [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: RaylibTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: RaylibTexture byteSize
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> texture [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RaylibTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibRenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RaylibTexture byteSize
]
