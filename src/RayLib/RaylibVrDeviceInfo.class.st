Class {
	#name : 'RaylibVrDeviceInfo',
	#superclass : 'FFIStructure',
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
    float lensDistortionValues[4];  
    float chromaAbCorrection[4];  
	)
]
