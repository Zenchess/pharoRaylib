Class {
	#name : 'RaylibCamera3D',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibCamera3D class >> fieldsDesc [
	^ #(
		RaylibVector3 position;      
    RaylibVector3 target;        
    RaylibVector3 up;            
    float fovy;            
    int projection;   
		)
]
