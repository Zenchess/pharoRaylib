Class {
	#name : 'RaylibVector4',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibVector4 class >> fieldsDesc [
	^ #(
		float x;                
    float y;                
    float z;                
    float w;               
		)
]
