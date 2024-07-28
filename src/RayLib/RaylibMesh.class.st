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

    // Vertex attributes data
    float *vertices;        
    float *texcoords;       
    float *texcoords2;     
    float *normals;         
    float *tangents;       
    unsigned char *colors;     
    unsigned short *indices;    

   
    float *animVertices;    
    float *animNormals;     
    unsigned char *boneIds; 
    float *boneWeights;     

    // OpenGL identifiers
    unsigned int vaoId;    
    unsigned int *vboId;  
		)
]
