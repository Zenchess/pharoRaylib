Class {
	#name : 'RaylibColor',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibColor class >> fieldsDesc [
^ #(
	 unsigned char r;        
    unsigned char g;        
    unsigned char b;        
    unsigned char a;        
)

]
