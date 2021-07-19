Class {
	#name : #ExampleModel,
	#superclass : #RaylibDemo,
	#instVars : [
		'camera',
		'model',
		'texture',
		'position'
	],
	#category : #RayLib
}

{ #category : #running }
ExampleModel >> processInput [
	super processInput.
	
]

{ #category : #running }
ExampleModel >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl beginDrawing.
	rl clearBackground: white.
	rl beginMode3D: camera.
	rl drawModel: model  position: position  scale: 0.2 color: white. 
	rl drawGrid: 10 spacing: 1.0.
	rl endMode3D.
	rl drawText: 'Example loading a model' posX: 10  posY: 10  fontSize: 20   color: darkGray.
	
	rl endDrawing.
]

{ #category : #running }
ExampleModel >> run [
	| screenWidth screenHeight builder materialArray|
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
		title: 'Example Model Loading'.
	rl setTargetFPS: 60.
	
	camera := Camera3D new.
	camera position: (Vector3 new x: 4.0; y: 4.0; z: 4.0; yourself).
	camera target: (Vector3 new x: 0.0; y: 1.0; z: -1.0; yourself).
	camera up: (Vector3 new x: 0.0; y: 1.0; z: 0.0; yourself).
	camera fovy: 45.0.
	camera projection: 0.
	
	model := rl loadModel: 'resources/models/watermill.obj'.
	texture := rl loadTexture: 'resources/models/watermill_diffuse.png'.
	
	
	((model materialsCollection at: 1) mapsCollection at: 1) texture: texture.
	position := Vector3 new x: 0.0; y: 0.0; z: 0.0; yourself.
	
	rl setCameraMode: camera mode:  1.
	
	
	
	
	
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
