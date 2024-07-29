Class {
	#name : 'BasicScreenManager',
	#superclass : 'RaylibExample',
	#instVars : [
		'currentScreen',
		'screenWidth',
		'screenHeight',
		'framesCounter'
	],
	#category : 'RayLibExamples',
	#package : 'RayLibExamples'
}

{ #category : 'running' }
BasicScreenManager >> processLogic [

	currentScreen = 1 ifTrue: [
		framesCounter := framesCounter + 1.
		framesCounter > 120 ifTrue: [ currentScreen := 2 ] ].


	currentScreen = 2 ifTrue: [
		(rl isKeyPressed: KEY_ENTER) | (rl isGestureDetected: GESTURE_TAP)
			ifTrue: [ currentScreen := 3 ] ].
	currentScreen = 3 ifTrue: [
		(rl isKeyPressed: KEY_ENTER) | (rl isGestureDetected: GESTURE_TAP)
			ifTrue: [ currentScreen := 4 ] ].
	currentScreen = 4 ifTrue: [
		(rl isKeyPressed: KEY_ENTER) | (rl isGestureDetected: GESTURE_TAP)
			ifTrue: [ currentScreen := 2 ] ]
]

{ #category : 'running' }
BasicScreenManager >> render [

	rl beginDrawing.
	rl clearBackground: RAYWHITE.
	currentScreen = 1 ifTrue: [
		rl
			drawText: 'LOGO SCREEN'
			posX: 20
			posY: 20
			fontSize: 40
			color: LIGHTGRAY.
		rl
			drawText: 'WAIT for 2 SECONDS...'
			posX: 290
			posY: 220
			fontSize: 20
			color: LIGHTGRAY ].
	currentScreen = 2 ifTrue: [
		rl
			drawRectangle: 0
			posY: 0
			width: screenWidth
			height: screenHeight
			color: GREEN.
		rl
			drawText: 'TITLE SCREEN'
			posX: 20
			posY: 20
			fontSize: 40
			color: DARKGREEN.
		rl
			drawText: 'PRESS ENTER or TAP to JUMP to GAMEPLAY SCREEN'
			posX: 120
			posY: 220
			fontSize: 20
			color: DARKGREEN ].
	currentScreen = 3 ifTrue: [
		rl
			drawRectangle: 0
			posY: 0
			width: screenWidth
			height: screenHeight
			color: PURPLE.
		rl
			drawText: 'GAMEPLAY SCREEN'
			posX: 20
			posY: 20
			fontSize: 40
			color: MAROON.
		rl
			drawText: 'PRESS ENTER or TAP to JUMP to ENDING SCREEN'
			posX: 130
			posY: 220
			fontSize: 20
			color: MAROON ].
	currentScreen = 4 ifTrue: [
		rl
			drawRectangle: 0
			posY: 0
			width: screenWidth
			height: screenHeight
			color: BLUE.
		rl
			drawText: 'ENDING SCREEN'
			posX: 20
			posY: 20
			fontSize: 40
			color: DARKBLUE.
		rl
			drawText: 'PRESS ENTER or TAP to RETURN to TITLE SCREEN'
			posX: 120
			posY: 220
			fontSize: 20
			color: DARKBLUE ].
	rl endDrawing
]

{ #category : 'running' }
BasicScreenManager >> run [

	
	screenWidth := 800.
	screenHeight := 450.
	rl := RaylibFFI new initialize.
	rl
		initWindow: screenWidth
		height: screenHeight
		title: 'raylib [core] example - basic screen manager'.
	
	
	currentScreen := 1.
	framesCounter := 0.
	rl setTargetFPS: 60.

	[ rl windowShouldClose ] whileFalse: [  
		self processLogic.
		self render.
	].
	rl closeWindow.
]
