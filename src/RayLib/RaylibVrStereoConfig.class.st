Class {
	#name : 'RaylibVrStereoConfig',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_LEFTLENSCENTER',
		'OFFSET_LEFTSCREENCENTER',
		'OFFSET_PROJECTION',
		'OFFSET_RIGHTLENSCENTER',
		'OFFSET_RIGHTSCREENCENTER',
		'OFFSET_SCALE',
		'OFFSET_SCALEIN',
		'OFFSET_VIEWOFFSET'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibVrStereoConfig class >> fieldsDesc [
	^#(
	matrix2Array projection;          
    matrix2Array viewOffset;           
    float2Array leftLensCenter;        
    float2Array rightLensCenter;       
    float2Array leftScreenCenter;      
    float2Array rightScreenCenter;     
    float2Array scale;                 
    float2Array scaleIn;  
	)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> leftLensCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> leftLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTLENSCENTER to: OFFSET_LEFTLENSCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> leftScreenCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> leftScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LEFTSCREENCENTER to: OFFSET_LEFTSCREENCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> projection [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> projection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_PROJECTION to: OFFSET_PROJECTION + 127 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> rightLensCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> rightLensCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTLENSCENTER to: OFFSET_RIGHTLENSCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> rightScreenCenter [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> rightScreenCenter: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_RIGHTSCREENCENTER to: OFFSET_RIGHTSCREENCENTER + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> scale [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_SCALE to: OFFSET_SCALE + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> scale: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALE to: OFFSET_SCALE + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> scaleIn [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 2) fromHandle: (handle copyFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 7)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> scaleIn: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_SCALEIN to: OFFSET_SCALEIN + 7 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> viewOffset [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIExternalStructureType size: 2) fromHandle: (handle copyFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127)
]

{ #category : 'accessing - structure variables' }
RaylibVrStereoConfig >> viewOffset: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_VIEWOFFSET to: OFFSET_VIEWOFFSET + 127 with: anObject getHandle startingAt: 1
]
