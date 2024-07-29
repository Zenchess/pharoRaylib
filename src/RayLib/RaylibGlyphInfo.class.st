Class {
	#name : 'RaylibGlyphInfo',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_ADVANCEX',
		'OFFSET_IMAGE',
		'OFFSET_OFFSETX',
		'OFFSET_OFFSETY',
		'OFFSET_VALUE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibGlyphInfo class >> fieldsDesc [
	^ #(
		int value;             
    int offsetX;           
    int offsetY;           
    int advanceX;           
    RaylibImage image;           
		)
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> advanceX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_ADVANCEX
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> advanceX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_ADVANCEX put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> image [
	"This method was automatically generated"
	^ RaylibImage fromHandle: (handle referenceStructAt: OFFSET_IMAGE length: RaylibImage byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> image: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_IMAGE put: anObject getHandle length: RaylibImage byteSize
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> offsetX [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETX
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> offsetX: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETX put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> offsetY [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_OFFSETY
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> offsetY: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_OFFSETY put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> value [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VALUE
]

{ #category : 'accessing - structure variables' }
RaylibGlyphInfo >> value: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VALUE put: anObject
]
