Class {
	#name : 'RaylibTexture',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_FORMAT',
		'OFFSET_HEIGHT',
		'OFFSET_ID',
		'OFFSET_MIPMAPS',
		'OFFSET_WIDTH'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibTexture class >> fieldsDesc [
	^ #(
		uint32 id;        
    int width;              
    int height;             
    int mipmaps;            
    int format;             
		)
]
