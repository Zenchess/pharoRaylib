Class {
	#name : #ExampleBasicWindow,
	#superclass : #Object,
	#instVars : [
		'rl',
		'shouldTerminate',
		'jobExecution',
		'lightGray',
		'white'
	],
	#category : #RayLib
}

{ #category : #running }
ExampleBasicWindow >> mainLoop [
	self processInput.
	self processLogic.
	self render.
]

{ #category : #'as yet unclassified' }
ExampleBasicWindow >> processInput [
	rl windowShouldClose ifTrue: [ 
		rl closeWindow.
		shouldTerminate := true.
		jobExecution stop.
		^self ]
]

{ #category : #'as yet unclassified' }
ExampleBasicWindow >> processLogic [
]

{ #category : #'as yet unclassified' }
ExampleBasicWindow >> render [
	shouldTerminate ifTrue: [ ^self ].
	rl beginDrawing.
	rl clearBackground: white.
	rl drawText: 'Congrats! You created your first window!' posX: 190  posY: 200  fontSize: 20  color: lightGray.
	rl endDrawing.
]

{ #category : #running }
ExampleBasicWindow >> run [
	| screenWidth screenHeight builder |
	lightGray := RaylibColor new r: 200; g: 200; b: 200; a: 255.
	white := RaylibColor new r: 255; g: 255; b: 255; a: 255.
	shouldTerminate := false.
	rl := RaylibFFI new.
	screenWidth := 800.
	screenHeight := 450.
	rl
		initWindow: screenWidth
		height: screenHeight
		title: 'raylib [core] example - basic window'.
	rl setTargetFPS: 60.
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
