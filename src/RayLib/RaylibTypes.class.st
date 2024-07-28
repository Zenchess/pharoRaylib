Class {
	#name : 'RaylibTypes',
	#superclass : 'SharedPool',
	#classVars : [
		'char32Array',
		'float2Array',
		'float4Array',
		'int4Array',
		'matrix2Array'
	],
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'class initialization' }
RaylibTypes class >> initialize [
	float4Array := FFIArray newArrayTypeOf: #float size: 4.
	char32Array := FFIArray newArrayTypeOf: #char size: 32. 
	int4Array := FFIArray newArrayTypeOf: #int size: 4.
	float2Array := FFIArray newArrayTypeOf: #float size: 2.
	matrix2Array := FFIArray newArrayTypeOf: #RaylibMatrix size: 2. 
	
]
