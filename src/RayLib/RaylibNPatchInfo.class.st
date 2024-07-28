Class {
	#name : 'RaylibNPatchInfo',
	#superclass : 'FFIStructure',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'field definition' }
RaylibNPatchInfo class >> fieldsDesc [
	^ #(
			RaylibRectangle source;      
    int left;               
    int top;               
    int right;              
    int bottom;             
    int layout;            
		)
]
