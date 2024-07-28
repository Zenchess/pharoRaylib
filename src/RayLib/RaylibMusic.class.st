Class {
	#name : 'RaylibMusic',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMusic class >> fieldsDesc [
	^ #(
	 RaylibAudioStream stream;        
    unsigned int frameCount;    
    bool looping;               

    int ctxType;                
    void *ctxData;  
	)
]
