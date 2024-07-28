Class {
	#name : 'RaylibRenderTexture',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRenderTexture class >> fieldsDesc [
	^ #(
		uint32 id;        
    RaylibTexture texture;        
    RaylibTexture depth;          
	)
]
