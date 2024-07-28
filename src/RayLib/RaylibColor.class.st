Class {
	#name : 'RaylibColor',
	#superclass : 'FFIStructure',
	#classVars : [
		'OFFSET_A',
		'OFFSET_B',
		'OFFSET_G',
		'OFFSET_R'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibColor class >> fieldsDesc [
^ #(
	 unsignedChar r;        
    unsignedChar g;        
    unsignedChar b;        
    unsignedChar a;        
)

]
