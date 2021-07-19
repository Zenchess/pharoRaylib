Class {
	#name : #ModelAnimation,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_FRAMECOUNT',
		'OFFSET_FRAMEPOSES'
	],
	#category : #RayLib
}

{ #category : #'field definition' }
ModelAnimation class >> fieldsDesc [ 
	^ #(
	 int boneCount;
    int frameCount;  
	BoneInfo *bones; 
	RaylibTransform **framePoses;
	)
]

{ #category : #'accessing structure variables' }
ModelAnimation >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : #'accessing structure variables' }
ModelAnimation >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : #'accessing structure variables' }
ModelAnimation >> bones [
	"This method was automatically generated"
	^BoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : #'accessing structure variables' }
ModelAnimation >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
ModelAnimation >> frameCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FRAMECOUNT
]

{ #category : #'accessing structure variables' }
ModelAnimation >> frameCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : #'accessing structure variables' }
ModelAnimation >> framePoses [
	"This method was automatically generated"
	^RaylibTransform fromHandle: (handle pointerAt: OFFSET_FRAMEPOSES)
]

{ #category : #'accessing structure variables' }
ModelAnimation >> framePoses: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FRAMEPOSES put: anObject getHandle.
]
