Class {
	#name : 'RaylibMaterialMap',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMaterialMap class >> fieldsDesc [
	^#(
		RaylibTexture2D texture;     
    Color color;           
    float value;  
	)
]
