Class {
	#name : 'RaylibModelAnimation',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_BONECOUNT',
		'OFFSET_BONES',
		'OFFSET_FRAMECOUNT',
		'OFFSET_FRAMEPOSES',
		'OFFSET_NAME'
	],
	#pools : [
		'RaylibTypes'
	],
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

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> boneCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_BONECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> boneCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_BONECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> bones [
	"This method was automatically generated"
	^RaylibBoneInfo fromHandle: (handle pointerAt: OFFSET_BONES)
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> bones: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> frameCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FRAMECOUNT
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> frameCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FRAMECOUNT put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> framePoses [
	"This method was automatically generated"
	^RaylibTransform fromHandle: (handle pointerAt: OFFSET_FRAMEPOSES)
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> framePoses: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FRAMEPOSES put: anObject getHandle.
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> name [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFICharacterType size: 32) fromHandle: (handle copyFrom: OFFSET_NAME to: OFFSET_NAME + 31)
]

{ #category : 'accessing - structure variables' }
RaylibModelAnimation >> name: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_NAME to: OFFSET_NAME + 31 with: anObject getHandle startingAt: 1
]
