Class {
	#name : #Material,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_MAPS',
		'OFFSET_PARAMS',
		'OFFSET_SHADER'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
Material class >> fieldsDesc [ 
	^ #(
	 Shader shader;
    void *maps;
	 float4Array params;
	)
]

{ #category : #'accessing structure variables' }
Material >> maps [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MAPS) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
Material >> maps: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MAPS put: anObject getHandle.
]

{ #category : #'as yet unclassified' }
Material >> mapsCollection [
	^ ( 1 to: 12) collect: [ :index| MaterialMap fromHandle: (self maps pointer  pointerAt: ((index - 1) * 28) + 1)]
]

{ #category : #'accessing structure variables' }
Material >> params [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15)
]

{ #category : #'accessing structure variables' }
Material >> params: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PARAMS to: OFFSET_PARAMS + 15 with: anObject getHandle startingAt: 1
]

{ #category : #'accessing structure variables' }
Material >> shader [
	"This method was automatically generated"
	^ Shader fromHandle: (handle referenceStructAt: OFFSET_SHADER length: Shader byteSize)
]

{ #category : #'accessing structure variables' }
Material >> shader: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SHADER put: anObject getHandle length: Shader byteSize
]
