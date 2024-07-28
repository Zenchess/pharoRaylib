Class {
	#name : 'RaylibSound',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibSound class >> fieldsDesc [
	^#(
		RaylibAudioStream stream;
		uint32 frameCount;
	)
]
