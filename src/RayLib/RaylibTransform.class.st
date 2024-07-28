Class {
	#name : 'RaylibTransform',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibTransform class >> fieldsDesc [
	^ #(
			Vector3 translation;   
    Vector4 rotation;    
    Vector3 scale; 
		)
]
