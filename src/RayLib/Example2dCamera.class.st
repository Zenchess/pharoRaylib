Class {
	#name : #Example2dCamera,
	#superclass : #RaylibDemo,
	#instVars : [
		'maxBuildings',
		'player',
		'buildings',
		'buildColors',
		'spacing',
		'random',
		'camera',
		'screenHeight',
		'screenWidth'
	],
	#category : #RayLib
}

{ #category : #accessing }
Example2dCamera >> buildings [

	^ buildings
]

{ #category : #accessing }
Example2dCamera >> camera: anObject [

	camera := anObject
]

{ #category : #running }
Example2dCamera >> processInput [
	super processInput.
	(rl isKeyDown: KEY_RIGHT) ifTrue: [ player x: player x + 2 ].
	(rl isKeyDown: KEY_LEFT) ifTrue: [ player x: player x - 2 ].
	
	camera target: (Vector2 new x: player x + 20; y: player y + 20).
	
	(rl isKeyDown: KEY_A) ifTrue: [ camera rotation: camera rotation - 1 ].
	(rl isKeyDown: KEY_S) ifTrue: [ camera rotation: camera rotation + 1 ]. 
	
	camera rotation > 40 ifTrue: [ camera rotation: 40 ].
	camera rotation < -40 ifTrue: [ camera rotation: -40 ].
	
	camera zoom: camera zoom + rl getMouseWheelMove .
	
	camera zoom > 3.0 ifTrue: [ camera zoom: 3.0 ].
	camera zoom < 0.1 ifTrue: [ camera zoom: 0.1 ].
	
	(rl isKeyPressed: KEY_R) ifTrue: [ 
		camera zoom: 1.0.
		camera rotation: 0.0 ].
]

{ #category : #running }
Example2dCamera >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl beginDrawing.
	rl clearBackground: RAYWHITE.
	rl beginMode2D: camera.
		rl drawRectangle: -6000 posY: 320  width: 13000  height: 8000  color: DARKGRAY. 
		1 to: maxBuildings do: [ :count|
			rl drawRectangleRec: (buildings at: count) color: (buildColors at: count).
			rl drawRectangleRec: player color: RED.
			
			rl drawLine: camera target x startPosY: screenHeight * 10 negated 
				endPosX: camera target x endPosY: screenHeight * 10 color: GREEN.
			rl drawLine: screenWidth * 10 negated startPosY: camera target y
			  endPosX: screenWidth * 10  endPosY: camera target y  color: GREEN].
	rl endMode2D. 
	
	rl drawRectangle: 0 posY: 0 width: screenWidth height: 5 color: RED. 
	rl drawRectangle: 0 posY: 5 width: 5 height: screenHeight - 5  color: RED.
	
	rl drawRectangle: screenWidth - 5 posY: 5  width: 5  height: screenHeight - 10  color: RED.
	rl drawRectangle: 0 posY: screenHeight - 5 width: screenWidth  height: 5  color: RED.
	   
	rl drawRectangle: 10 posY: 10  width: 250  height: 113  color: SKYBLUE.
	
	rl drawText: 'Free 2d camera conrols:' posX: 20  posY: 20  fontSize: 10  color: BLACK.
	rl drawText: '- Right/Left to move Offset' posX: 40 posY: 40 fontSize: 10 color: DARKGRAY.
	rl drawText: '- Mouse Wheel to Zoom in-out' posX: 40 posY: 60 fontSize: 10 color: DARKGRAY.
	rl drawText: '- A / S to Rotate' posX: 40 posY: 80 fontSize: 10 color: DARKGRAY.
	rl drawText: '- R to reset Zoom and Rotation' posX: 40 posY: 100 fontSize: 10 color: DARKGRAY.
	
	rl endDrawing.
]

{ #category : #running }
Example2dCamera >> run [
	|   |
	shouldTerminate := false.
	rl := RaylibFFI new.
	screenWidth := 800.
	screenHeight := 450.
	rl
		initWindow: screenWidth
		height: screenHeight
		title: 'raylib [core] example - 2d camera'.
	rl setTargetFPS: 60.

	random := Random new.
	maxBuildings := 100.
	player := RaylibRectangle new x: 400; y: 280; width: 40; height: 40; yourself.
	buildings := OrderedCollection new.
	buildColors := OrderedCollection new.
	
	spacing := 0.
	1 to: maxBuildings do: [ :count| |randomHeight randomWidth|
		randomHeight := random nextIntegerBetween: 50 and: 200.
		randomWidth := random nextIntegerBetween: 100 and: 800. 
		buildings add: (RaylibRectangle new x: -6000 + spacing; y: screenHeight - 130 - randomHeight; 
							width: randomWidth; height: randomHeight; yourself ).
		spacing := spacing + randomWidth.
		buildColors add: (RaylibColor new r: (random nextIntegerBetween: 200 and: 240);
		 								   g: (random nextIntegerBetween: 200 and: 240);
											b: (random nextIntegerBetween: 200 and: 250);
											a: 255; 
											yourself) ].
		camera := Camera2D new.
		camera target: (Vector2 new x: player x + 20; y: player y + 20; yourself).
		camera offset: (Vector2 new x: screenWidth / 2; y: screenHeight / 2; yourself).
		camera rotation: 0.0.
		camera zoom: 1.0.
		
										


	self startProcess.
]
