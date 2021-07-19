Class {
	#name : #RenderTexture,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
RenderTexture class >> fieldsDesc [ 
	^ #(
	 uint id;
    RaylibTexture texture;
	 RaylibTexture depth;
	)
]

{ #category : #'accessing structure variables' }
RenderTexture >> depth [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: RaylibTexture byteSize)
]

{ #category : #'accessing structure variables' }
RenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: RaylibTexture byteSize
]

{ #category : #'accessing structure variables' }
RenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing structure variables' }
RenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing structure variables' }
RenderTexture >> texture [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RaylibTexture byteSize)
]

{ #category : #'accessing structure variables' }
RenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RaylibTexture byteSize
]
