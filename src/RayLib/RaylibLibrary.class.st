Class {
	#name : 'RaylibLibrary',
	#superclass : 'FFILibrary',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'as yet unclassified' }
RaylibLibrary >> unixLibraryName [
	^'libraylib.so'
]

{ #category : 'as yet unclassified' }
RaylibLibrary >> win32LibraryName [
	^'raylib.dll'
]
