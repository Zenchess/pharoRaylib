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
