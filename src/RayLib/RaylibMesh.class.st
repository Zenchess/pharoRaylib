Class {
	#name : 'RaylibMesh',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMesh class >> fieldsDesc [
	^ #(
			int vertexCount;       
    int triangleCount;      
    float *vertices;        
    float *texcoords;       
    float *texcoords2;     
    float *normals;         
    float *tangents;       
    unsignedChar *colors;     
    ushort *indices;    
    float *animVertices;    
    float *animNormals;     
    unsignedChar *boneIds; 
    float *boneWeights;     
    uint32 vaoId;    
    uint32 *vboId;  
		)
]
