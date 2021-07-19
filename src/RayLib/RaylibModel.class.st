Class {
	#name : #RaylibModel,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_BINDPOSE',
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_MATERIALCOUNT',
		'OFFSET_MATERIALS',
		'OFFSET_MESHCOUNT',
		'OFFSET_MESHES',
		'OFFSET_MESHMATERIAL',
		'OFFSET_TRANSFORM'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
RaylibModel class >> fieldsDesc [ 
	^ #(
	 RaylibMatrix transform;
    int meshCount; 
	int materialCount;
	void *meshes;
	void *materials;
	int *meshMaterial;
	
	int boneCount;
	BoneInfo *bones;
	RaylibTransform *bindPose;
	)
]

{ #category : #'accessing structure variables' }
RaylibModel >> bindPose [
	"This method was automatically generated"
	^RaylibTransform fromHandle: (handle pointerAt: OFFSET_BINDPOSE)
]

{ #category : #'accessing structure variables' }
RaylibModel >> bindPose: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BINDPOSE put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
RaylibModel >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : #'accessing structure variables' }
RaylibModel >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : #'accessing structure variables' }
RaylibModel >> bones [
	"This method was automatically generated"
	^BoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : #'accessing structure variables' }
RaylibModel >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
RaylibModel >> materialCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MATERIALCOUNT
]

{ #category : #'accessing structure variables' }
RaylibModel >> materialCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MATERIALCOUNT put: anObject
]

{ #category : #'accessing structure variables' }
RaylibModel >> materials [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MATERIALS) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
RaylibModel >> materials: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MATERIALS put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
RaylibModel >> materialsCollection [
	^ ( 1 to: self materialCount) collect: [ :index| Material fromHandle: (self materials pointer  pointerAt: ((index - 1) * 16) + 1)]
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_MESHCOUNT
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_MESHCOUNT put: anObject
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshMaterial [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MESHMATERIAL) type: ExternalType long asPointerType
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshMaterial: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHMATERIAL put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshes [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_MESHES) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshes: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_MESHES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
RaylibModel >> meshesCollection [
	^ ( 1 to: self meshCount) collect: [ :index| Mesh fromHandle: (self meshes pointer  pointerAt: ((index - 1) * 60) + 1)]
]

{ #category : #'accessing structure variables' }
RaylibModel >> transform [
	"This method was automatically generated"
	^ RaylibMatrix fromHandle: (handle referenceStructAt: OFFSET_TRANSFORM length: RaylibMatrix byteSize)
]

{ #category : #'accessing structure variables' }
RaylibModel >> transform: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TRANSFORM put: anObject getHandle length: RaylibMatrix byteSize
]
