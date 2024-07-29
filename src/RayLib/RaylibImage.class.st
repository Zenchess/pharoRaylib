Class {
	#name : 'RaylibImage',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_DATA',
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibImage class >> fieldsDesc [
	^ #(
		void *data;             
    int width;              
    int height;             
    int mipmaps;            
    int format;             
		)
]

{ #category : 'accessing - structure variables' }
RaylibImage >> data [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DATA) type: ExternalType void asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibImage >> data: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DATA put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibImage >> format [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FORMAT
]

{ #category : 'accessing - structure variables' }
RaylibImage >> format: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FORMAT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibImage >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : 'accessing - structure variables' }
RaylibImage >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibImage >> mipmaps [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MIPMAPS
]

{ #category : 'accessing - structure variables' }
RaylibImage >> mipmaps: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MIPMAPS put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibImage >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : 'accessing - structure variables' }
RaylibImage >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]
