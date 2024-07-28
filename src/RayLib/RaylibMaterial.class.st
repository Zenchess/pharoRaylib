Class {
	#name : 'RaylibMaterial',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibMaterial class >> fieldsDesc [
	^#(
	 RaylibShader shader;         
    RaylibMaterialMap *maps;     
    float params[4];  
	)
]
