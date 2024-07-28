Class {
	#name : 'RaylibShader',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibShader class >> fieldsDesc [
	^#(
	unsigned int id;       
    int *locs;  
	)
]
