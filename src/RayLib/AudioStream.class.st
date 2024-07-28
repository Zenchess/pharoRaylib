Class {
	#name : 'AudioStream',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
AudioStream class >> fieldsDesc [
	^#(
		 RaylibRAudioBufferOpaque *buffer;      
    RaylibRAudioProcessorOpaque *processor;

    unsigned int sampleRate;    
    unsigned int sampleSize;    
    unsigned int channels;   
	)
]
