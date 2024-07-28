Class {
	#name : 'RaylibMatrix',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMatrix class >> fieldsDesc [
	^ #(
		float m0, m4, m8, m12;  
    	float m1, m5, m9, m13;  
    	float m2, m6, m10, m14; 
    	float m3, m7, m11, m15; 
	)
]
