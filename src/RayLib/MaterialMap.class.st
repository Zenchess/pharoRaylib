Class {
	#name : #MaterialMap,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_COLOR',
		'OFFSET_TEXTURE',
		'OFFSET_VALUE'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
MaterialMap class >> fieldsDesc [ 
	^ #(
	 RaylibTexture texture;
    RaylibColor color;
	float value;
	)
]

{ #category : #'accessing structure variables' }
MaterialMap >> color [
	"This method was automatically generated"
	^ RaylibColor fromHandle: (handle referenceStructAt: OFFSET_COLOR length: RaylibColor byteSize)
]

{ #category : #'accessing structure variables' }
MaterialMap >> color: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_COLOR put: anObject getHandle length: RaylibColor byteSize
]

{ #category : #'accessing structure variables' }
MaterialMap >> texture [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RaylibTexture byteSize)
]

{ #category : #'accessing structure variables' }
MaterialMap >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RaylibTexture byteSize
]

{ #category : #'accessing structure variables' }
MaterialMap >> value [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VALUE
]

{ #category : #'accessing structure variables' }
MaterialMap >> value: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VALUE put: anObject
]
