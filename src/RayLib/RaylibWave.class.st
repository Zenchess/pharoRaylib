Class {
	#name : 'RaylibWave',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibWave class >> fieldsDesc [
	^#(
		unsigned int frameCount;    
    unsigned int sampleRate;    
    unsigned int sampleSize;    
    unsigned int channels;      
    void *data; 
	)
]
