Class {
	#name : 'RaylibShader',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_ID',
		'OFFSET_LOCS'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibShader class >> fieldsDesc [
	^#(
	uint32 id;       
    int *locs;  
	)
]
