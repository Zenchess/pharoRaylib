Class {
	#name : 'RaylibBoundingBox',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibBoundingBox class >> fieldsDesc [
	^#(
		 Vector3 min;           
    Vector3 max;
	)
]
