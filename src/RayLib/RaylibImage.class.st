Class {
	#name : 'RaylibImage',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibImage class >> fieldsDesc [
	^ #(
		void *data;             
    int width;              
    int height;             
    int mipmaps;            
    int format;             
		)
]
