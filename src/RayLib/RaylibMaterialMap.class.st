Class {
	#name : 'RaylibMaterialMap',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_COLOR',
		'OFFSET_TEXTURE',
		'OFFSET_VALUE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMaterialMap class >> fieldsDesc [
	^#(
		RaylibTexture texture;     
    RaylibColor color;           
    float value;  
	)
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> color [
	"This method was automatically generated"
	^ RaylibColor fromHandle: (handle referenceStructAt: OFFSET_COLOR length: RaylibColor byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> color: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_COLOR put: anObject getHandle length: RaylibColor byteSize
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> texture [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RaylibTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RaylibTexture byteSize
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> value [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VALUE
]

{ #category : 'accessing - structure variables' }
RaylibMaterialMap >> value: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VALUE put: anObject
]
