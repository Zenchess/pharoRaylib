"
Doesn't work correctly, will take some investigation into which buttons are being pressed by raylib
"
Class {
	#name : #ExampleInputMouse,
	#superclass : #RaylibDemo,
	#instVars : [
		'ballPosition',
		'ballColor'
	],
	#category : #RayLib
}

{ #category : #running }
ExampleInputMouse >> changeBallColor: color [ 	
	color isNil ifTrue: [ self halt ].
	ballColor := color.
]

{ #category : #running }
ExampleInputMouse >> processInput [
	super processInput.
	(rl isMouseButtonPressed:  MOUSE_BUTTON_LEFT) ifTrue: [ self changeBallColor: MAROON. ^self ].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_MIDDLE) ifTrue: [ self changeBallColor: LIME . ^self].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_RIGHT) ifTrue: [ self changeBallColor: DARKBLUE . ^self].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_SIDE) ifTrue: [ self changeBallColor: PURPLE . ^self].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_EXTRA) ifTrue: [ self changeBallColor: YELLOW . ^self].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_FORWARD) ifTrue: [ self changeBallColor: ORANGE . ^self].
	(rl isMouseButtonPressed:  MOUSE_BUTTON_BACK) ifTrue: [ self changeBallColor: BEIGE . ^self].
	
]

{ #category : #running }
ExampleInputMouse >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl beginDrawing.
	rl clearBackground: RAYWHITE.
	
	rl drawCircleV: ballPosition radius: 40 color: ballColor.
	rl drawText: 'move the ball with arrow keys' posX: 10  posY: 10  fontSize: 20   color: DARKGRAY.
	rl endDrawing.
]

{ #category : #running }
ExampleInputMouse >> run [
	| screenWidth screenHeight builder |
	shouldTerminate := false.
	rl := RaylibFFI new.
	screenWidth := 800.
	screenHeight := 450.
	rl
		initWindow: screenWidth
		height: screenHeight
		title: 'raylib [core] example - mouse input'.
	rl setTargetFPS: 60.
	ballPosition := Vector2 new x: screenWidth / 2; y: screenHeight / 2;yourself.
	ballColor := DARKBLUE.
	self startProcess.
]
