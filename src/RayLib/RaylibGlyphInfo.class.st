Class {
	#name : 'RaylibGlyphInfo',
	#superclass : 'FFIStructure',
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
