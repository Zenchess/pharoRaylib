Class {
	#name : #RaylibTransform,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_ROTATION',
		'OFFSET_SCALE',
		'OFFSET_TRANSLATION'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
RaylibTransform class >> fieldsDesc [ 
	^ #(
	 Vector3 translation;
    Vector4 rotation;
	 Vector3 scale;
	)
]
