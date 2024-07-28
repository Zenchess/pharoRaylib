Class {
	#name : 'RaylibFilePathList',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibFilePathList class >> fieldsDesc [
	^#(
	uint32 capacity;          
    uint32 count;             
    char **paths; 
	)
]
