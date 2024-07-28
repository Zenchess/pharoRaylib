Class {
	#name : 'RaylibRenderTexture',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRenderTexture class >> fieldsDesc [
	^ #(
		unsigned int id;        
    RaylibTexture texture;        
    RaylibTexture depth;          
	)
]
