Class {
	#name : 'RaylibTexture',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibTexture class >> fieldsDesc [
	^ #(
		unsigned int id;        
    int width;              
    int height;             
    int mipmaps;            
    int format;             
		)
]
