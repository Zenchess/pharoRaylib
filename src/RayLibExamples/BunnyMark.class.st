Class {
	#name : 'BunnyMark',
	#superclass : 'RaylibDemo',
	#instVars : [
		'bunnies',
		'maxBunnies',
		'texBunny',
		'icon'
	],
	#category : 'RayLibExamples',
	#package : 'RayLibExamples'
}

{ #category : 'as yet unclassified' }
BunnyMark class >> startDemo: fullscreenBool [
	|app|
	app := self new.
	fullscreenBool ifTrue: [app beFullscreen: true]
				ifFalse: [app beFullscreen: false].
	app run.
	^app
]

{ #category : 'as yet unclassified' }
BunnyMark class >> startDemoFullscreen [
	"	self startDemoFullscreen		"
	self startDemo: true.
]

{ #category : 'as yet unclassified' }
BunnyMark class >> startDemoWindowed [
	"	self startDemoWindowed 	"
	self startDemo: false.
]

{ #category : 'accessing' }
BunnyMark >> processInput [
	(rl isMouseButtonDown: MOUSE_BUTTON_LEFT )
		ifTrue: 
			[1 to: 10
				do: 
					[:index |
					bunnies size < maxBunnies
						ifTrue: 
							[ |bunny|
							bunny := Bunny new.
							bunny
								positionX: random next * monitorWidth;
								positionY: random next * monitorHeight.
							bunny speedX: random next * 2.
							bunny speedY: random next * 2.
							bunny color: (RaylibColor new
										r: (random next * 255) asInteger;
										g: (random next * 255) asInteger;
										b: (random next * 255) asInteger;
										a: 244;
										yourself).
							bunnies add: bunny]]]
]

{ #category : 'accessing' }
BunnyMark >> processLogic [
	bunnies do: 
			[:each |
			each moveAndCheck: monitorWidth maxHeight: monitorHeight ].
]

{ #category : 'accessing' }
BunnyMark >> render [
	rl beginDrawing.
	rl clearBackground: RAYWHITE.
	bunnies do: 
			[:each |
			rl
				drawTextureV: texBunny position: (RaylibVector2 new x: each positionX; y: each positionY; yourself) tint: each color].
	rl
		drawText: 'bunnies: ' , bunnies size printString
		posX: 120
		posY: 10
		fontSize: 20
		color: LIGHTGRAY.
	rl drawFPS: 10 posY: 10.
	rl endDrawing
]

{ #category : 'accessing' }
BunnyMark >> setup [	
	bunnies := OrderedCollection new.
	maxBunnies := 100000.
	texBunny := rl loadTexture: 'resources/wabbit_alpha.png' .
	
]
