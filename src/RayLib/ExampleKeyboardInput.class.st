Class {
	#name : #ExampleKeyboardInput,
	#superclass : #RaylibDemo,
	#instVars : [
		'ballPosition'
	],
	#category : #RayLib
}

{ #category : #running }
ExampleKeyboardInput >> processInput [
	super processInput.
	(rl isKeyDown: 262) ifTrue: [ ballPosition x: ballPosition x + 2.0 ]. "right arrow"
	(rl isKeyDown: 263) ifTrue: [ ballPosition x: ballPosition x - 2.0 ]. "left arrow"
	(rl isKeyDown: 265) ifTrue: [ ballPosition y: ballPosition y - 2.0 ]. "up arrow"
	(rl isKeyDown: 264) ifTrue: [ ballPosition y: ballPosition y + 2.0 ]. "down arrow"
]

{ #category : #running }
ExampleKeyboardInput >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl clearBackground: white.
	rl drawText: 'move the ball with arrow keys' posX: 10  posY: 10  fontSize: 20   color: darkGray.
	rl drawCircleV: ballPosition radius: 50 color: maroon.
	rl endDrawing.
]

{ #category : #running }
ExampleKeyboardInput >> run [
	| screenWidth screenHeight builder |
	lightGray := RaylibColor new r: 200; g: 200; b: 200; a: 255; yourself.
	white := RaylibColor new r: 255; g: 255; b: 255; a: 255; yourself.
	darkGray := RaylibColor new r: 80; g: 80; b: 80; a: 255; yourself.
	maroon := RaylibColor new r: 190; g: 33; b: 55; a: 255; yourself.
	shouldTerminate := false.
	rl := RaylibFFI new.
	screenWidth := 800.
	screenHeight := 450.
	rl
		initWindow: screenWidth
		height: screenHeight
		title: 'raylib [core] example - keyboard input'.
	rl setTargetFPS: 60.
	
	ballPosition := Vector2 new x: screenWidth / 2; y: screenHeight / 2;yourself.
	
	
	
	
	builder := TKTBuilder new.
	jobExecution := builder
		loopingService;
		onServiceFinalization: [ Transcript traceCr: 'Service has finished' ]
			onFailure: [ :err | self inform: err messageText ];
		send: #mainLoop;
		to: self;
		inALocalProcess;
		start
]
