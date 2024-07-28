Class {
	#name : 'RaylibModel',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibModel class >> fieldsDesc [
	^ #(
			RaylibMatrix transform;       

    int meshCount;         
    int materialCount;     
    RaylibMesh *meshes;           
    RaylibMaterial *materials;    
    int *meshMaterial;      
    
    int boneCount;          // Number of bones
    RaylibBoneInfo *bones;        // Bones information (skeleton)
    RaylibTransform *bindPose;   
		)
]
