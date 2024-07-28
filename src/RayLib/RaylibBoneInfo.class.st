Class {
	#name : 'RaylibBoneInfo',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibBoneInfo class >> fieldsDesc [
	^#(
		 char name[32];         
    int parent;   
	)
]
