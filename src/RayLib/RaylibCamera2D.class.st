Class {
	#name : 'RaylibCamera2D',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibCamera2D class >> fieldsDesc [
	^ #(
		RaylibVector2 offset;         
    RaylibVector2 target;         
    float rotation;        
    float zoom;
		)
]
