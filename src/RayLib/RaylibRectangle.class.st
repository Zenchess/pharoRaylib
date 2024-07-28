Class {
	#name : 'RaylibRectangle',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRectangle class >> fieldsDesc [
	^ #(
		float x;               
    float y;               
    float width;           
    float height;          
	)
]
