Class {
	#name : 'RaylibModelAnimation',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibModelAnimation class >> fieldsDesc [
	^#(
			int boneCount;         
    int frameCount;         
    RaylibBoneInfo *bones;       
    RaylibTransform **framePoses; 
    char32Array name;   
	)
]
