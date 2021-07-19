Class {
	#name : #RaylibTypes,
	#superclass : #Object,
	#classVars : [
		'char32Array',
		'float4Array',
		'materialMapsArray',
		'meshArray'
	],
	#category : #RayLib
}

{ #category : #'class initialization' }
RaylibTypes class >> initialize [ 
	float4Array := FFIArray newArrayTypeOf: #float size: 4.
	char32Array := FFIArray newArrayTypeOf: #char size: 32. 
	materialMapsArray := FFIArray newArrayTypeOf: #MaterialMap size: 12.
]
