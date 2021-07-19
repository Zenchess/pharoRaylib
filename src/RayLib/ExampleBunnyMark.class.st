Class {
	#name : #ExampleBunnyMark,
	#superclass : #RaylibDemo,
	#instVars : [
		'bunnies',
		'texBunny',
		'maxBunnies',
		'random',
		'width',
		'height'
	],
	#category : #RayLib
}

{ #category : #running }
ExampleBunnyMark >> processInput [
	super processInput.
	(rl isMouseButtonDown:  0)
		ifTrue: 
			[1 to: 100
				do: 
					[:index |
					bunnies size < maxBunnies
						ifTrue: 
							[| bunny position |
							bunny := Bunny new.
							bunny positionX: random next * width;
										positionY: random next * height.
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

{ #category : #running }
ExampleBunnyMark >> processLogic [
	bunnies do: [ :each|
						each moveAndCheckWidth: width height: height ].
]

{ #category : #running }
ExampleBunnyMark >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl beginDrawing.
	rl clearBackground: white.
	bunnies do: 
			[:each |
			rl
				drawTextureV: texBunny position: (Vector2 new x: each positionX; y: each positionY; yourself) color: each color].
					
	rl
		drawText: 'bunnies: ' , bunnies size printString
		posX: 120
		posY: 10
		fontSize: 20
		color: lightGray.
	rl drawFPS: 10 posY: 10.
	rl endDrawing.
]

{ #category : #running }
ExampleBunnyMark >> run [
	| screenWidth screenHeight builder materialArray|
	lightGray := RaylibColor new r: 200; g: 200; b: 200; a: 255; yourself.
	white := RaylibColor new r: 255; g: 255; b: 255; a: 255; yourself.
	darkGray := RaylibColor new r: 80; g: 80; b: 80; a: 255; yourself.
	maroon := RaylibColor new r: 190; g: 33; b: 55; a: 255; yourself.
	shouldTerminate := false.
	rl := RaylibFFI new.
	width := 1280.
	height := 1024.
	rl
		initWindow: width
		height: height
		title: 'BunnyMark - Click to Spawn Bunnies'.
	rl setTargetFPS: 144.
	maxBunnies := 50000.
	
	texBunny := rl loadTexture: 'resources/wabbit_alpha.png'.
	bunnies := OrderedCollection new.
	random := Random new.
	self startProcess.
	
	"builder := TKTBuilder new.
	jobExecution := builder
		loopingService;
		onServiceFinalization: [ Transcript traceCr: 'Service has finished' ]
			onFailure: [ :err | self inform: err messageText ];
		send: #mainLoop;
		to: self;
		inALocalProcess;
		start"
	
	

]
