Class {
	#name : 'RaylibFont',
	#superclass : 'FFIStructure',
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
