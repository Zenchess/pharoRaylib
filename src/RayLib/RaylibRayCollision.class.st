Class {
	#name : 'RaylibRayCollision',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibRayCollision class >> fieldsDesc [
	^#(
		 bool hit;             
    float distance;        
    Vector3 point;         
    Vector3 normal; 
	)
]
