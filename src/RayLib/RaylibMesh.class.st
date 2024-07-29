Class {
	#name : 'RaylibMesh',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_ANIMNORMALS',
		'OFFSET_ANIMVERTICES',
		'OFFSET_BONEIDS',
		'OFFSET_BONEWEIGHTS',
		'OFFSET_COLORS',
		'OFFSET_INDICES',
		'OFFSET_NORMALS',
		'OFFSET_TANGENTS',
		'OFFSET_TEXCOORDS',
		'OFFSET_TEXCOORDS2',
		'OFFSET_TRIANGLECOUNT',
		'OFFSET_VAOID',
		'OFFSET_VBOID',
		'OFFSET_VERTEXCOUNT',
		'OFFSET_VERTICES'
	],
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

{ #category : 'accessing - structure variables' }
RaylibMesh >> animNormals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMNORMALS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> animNormals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMNORMALS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> animVertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMVERTICES) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> animVertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMVERTICES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> boneIds [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEIDS) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> boneIds: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEIDS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> boneWeights [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEWEIGHTS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> boneWeights: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEWEIGHTS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> colors [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLORS) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> colors: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLORS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> indices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_INDICES) type: ExternalType ushort asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> indices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_INDICES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> normals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NORMALS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> normals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NORMALS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> tangents [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TANGENTS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> tangents: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TANGENTS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> texcoords [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> texcoords2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS2) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> texcoords2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS2 put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> texcoords: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> triangleCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TRIANGLECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> triangleCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TRIANGLECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vaoId [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VAOID
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vaoId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VAOID put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vboId [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VBOID) type: ExternalType ulong asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vboId: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VBOID put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vertexCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VERTEXCOUNT
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vertexCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VERTEXCOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VERTICES) type: ExternalType float asPointerType
]

{ #category : 'accessing - structure variables' }
RaylibMesh >> vertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VERTICES put: anObject getHandle.
]
