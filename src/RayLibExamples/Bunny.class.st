Class {
	#name : 'Bunny',
	#superclass : 'Object',
	#instVars : [
		'positionX',
		'positionY',
		'speedX',
		'speedY',
		'color',
		'position',
		'speed'
	],
	#category : 'RayLibExamples',
	#package : 'RayLibExamples'
}

{ #category : 'accessing' }
Bunny >> color [

	^ color
]

{ #category : 'accessing' }
Bunny >> color: anObject [

	color := anObject
]

{ #category : 'as yet unclassified' }
Bunny >> moveAndCheck: maxWidth maxHeight: maxHeight [
	positionX := positionX + speedX.
	positionY := positionY + speedY.

	"Also remove numeric calculations here for small extra gain"
	(positionX > maxWidth or: [positionX < 0]) ifTrue: [speedX := speedX * -1].
	(positionY > maxHeight or: [positionY < 0]) ifTrue: [speedY := speedY * -1]
]

{ #category : 'accessing' }
Bunny >> position [

	^ position
]

{ #category : 'accessing' }
Bunny >> position: anObject [

	position := anObject
]

{ #category : 'accessing' }
Bunny >> positionX [

	^ positionX
]

{ #category : 'accessing' }
Bunny >> positionX: anObject [

	positionX := anObject
]

{ #category : 'accessing' }
Bunny >> positionY [

	^ positionY
]

{ #category : 'accessing' }
Bunny >> positionY: anObject [

	positionY := anObject
]

{ #category : 'accessing' }
Bunny >> speed [

	^ speed
]

{ #category : 'accessing' }
Bunny >> speed: anObject [

	speed := anObject
]

{ #category : 'accessing' }
Bunny >> speedX [

	^ speedX
]

{ #category : 'accessing' }
Bunny >> speedX: anObject [

	speedX := anObject
]

{ #category : 'accessing' }
Bunny >> speedY [

	^ speedY
]

{ #category : 'accessing' }
Bunny >> speedY: anObject [

	speedY := anObject
]
