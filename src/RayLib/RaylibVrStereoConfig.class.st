Class {
	#name : 'RaylibVrStereoConfig',
	#superclass : 'FFIStructure',
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
