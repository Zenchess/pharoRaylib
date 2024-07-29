Class {
	#name : 'RaylibVrDeviceInfo',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_CHROMAABCORRECTION',
		'OFFSET_EYETOSCREENDISTANCE',
		'OFFSET_HRESOLUTION',
		'OFFSET_HSCREENSIZE',
		'OFFSET_INTERPUPILLARYDISTANCE',
		'OFFSET_LENSDISTORTIONVALUES',
		'OFFSET_LENSSEPARATIONDISTANCE',
		'OFFSET_VRESOLUTION',
		'OFFSET_VSCREENCENTER',
		'OFFSET_VSCREENSIZE'
	],
	#pools : [
		'RaylibTypes'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibVrDeviceInfo class >> fieldsDesc [
	^ #(
		int hResolution;               
    int vResolution;                
    float hScreenSize;             
    float vScreenSize;              
    float vScreenCenter;            
    float eyeToScreenDistance;      
    float lensSeparationDistance;   
    float interpupillaryDistance;   
    float4Array lensDistortionValues;  
    float4Array chromaAbCorrection;  
	)
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> chromaAbCorrection [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15)
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> chromaAbCorrection: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_CHROMAABCORRECTION to: OFFSET_CHROMAABCORRECTION + 15 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> eyeToScreenDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_EYETOSCREENDISTANCE
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> eyeToScreenDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_EYETOSCREENDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> hResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HRESOLUTION
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> hResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HRESOLUTION put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> hScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_HSCREENSIZE
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> hScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_HSCREENSIZE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> interpupillaryDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_INTERPUPILLARYDISTANCE
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> interpupillaryDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_INTERPUPILLARYDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> lensDistortionValues [
	"This method was automatically generated"
	^(FFITypeArray ofType: #FFIFloat32 size: 4) fromHandle: (handle copyFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15)
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> lensDistortionValues: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_LENSDISTORTIONVALUES to: OFFSET_LENSDISTORTIONVALUES + 15 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> lensSeparationDistance [
	"This method was automatically generated"
	^handle floatAt: OFFSET_LENSSEPARATIONDISTANCE
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> lensSeparationDistance: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_LENSSEPARATIONDISTANCE put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vResolution [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VRESOLUTION
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vResolution: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VRESOLUTION put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vScreenCenter [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENCENTER
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vScreenCenter: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENCENTER put: anObject
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vScreenSize [
	"This method was automatically generated"
	^handle floatAt: OFFSET_VSCREENSIZE
]

{ #category : 'accessing - structure variables' }
RaylibVrDeviceInfo >> vScreenSize: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_VSCREENSIZE put: anObject
]
