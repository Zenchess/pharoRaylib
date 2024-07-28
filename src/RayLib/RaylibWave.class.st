Class {
	#name : 'RaylibWave',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibWave class >> fieldsDesc [
	^#(
		uint32 frameCount;    
    uint32 sampleRate;    
    uint32 sampleSize;    
    uint32 channels;      
    void *data; 
	)
]
