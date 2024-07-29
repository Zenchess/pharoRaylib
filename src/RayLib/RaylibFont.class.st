Class {
	#name : 'RaylibFont',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_BASESIZE',
		'OFFSET_GLYPHCOUNT',
		'OFFSET_GLYPHPADDING',
		'OFFSET_GLYPHS',
		'OFFSET_RECS',
		'OFFSET_TEXTURE'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibFont class >> fieldsDesc [
	^ #(
			int baseSize;          
    int glyphCount;         
    int glyphPadding;       
    RaylibTexture texture;     
    RaylibRectangle *recs;        
    RaylibGlyphInfo *glyphs;     
		)
]

{ #category : 'accessing - structure variables' }
RaylibFont >> baseSize [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BASESIZE
]

{ #category : 'accessing - structure variables' }
RaylibFont >> baseSize: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BASESIZE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_GLYPHCOUNT
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_GLYPHCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphPadding [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_GLYPHPADDING
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphPadding: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_GLYPHPADDING put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphs [
	"This method was automatically generated"
	^RaylibGlyphInfo fromHandle: (handle pointerAt: OFFSET_GLYPHS)
]

{ #category : 'accessing - structure variables' }
RaylibFont >> glyphs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_GLYPHS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibFont >> recs [
	"This method was automatically generated"
	^RaylibRectangle fromHandle: (handle pointerAt: OFFSET_RECS)
]

{ #category : 'accessing - structure variables' }
RaylibFont >> recs: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_RECS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibFont >> texture [
	"This method was automatically generated"
	^ RaylibTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RaylibTexture byteSize)
]

{ #category : 'accessing - structure variables' }
RaylibFont >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RaylibTexture byteSize
]
