Class {
	#name : #BoneInfo,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARENT'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
BoneInfo class >> fieldsDesc [ 
	^ #(
	 char32Array name;
    int parent;
	)
]
