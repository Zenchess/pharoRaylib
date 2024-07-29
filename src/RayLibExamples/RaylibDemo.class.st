Class {
	#name : 'RaylibDemo',
	#superclass : 'Object',
	#instVars : [
		'shouldTerminate',
		'rl',
		'random',
		'width',
		'height',
		'process',
		'windowTitle',
		'monitorWidth',
		'monitorHeight',
		'beFullscreen'
	],
	#pools : [
		'RaylibConstants'
	],
	#category : 'RayLibExamples',
	#package : 'RayLibExamples'
}

{ #category : 'as yet unclassified' }
RaylibDemo class >> startDemo [
"		self new run			"
]

{ #category : 'as yet unclassified' }
RaylibDemo class >> startDemo: fullscreenBool [
	|app|
	app := self new.
	fullscreenBool ifTrue: [app beFullscreen: true]
				ifFalse: [app beFullscreen: false].
	app run.
	^app
]

{ #category : 'as yet unclassified' }
RaylibDemo class >> startDemoFullscreen [
	self startDemo: true.
]

{ #category : 'as yet unclassified' }
RaylibDemo class >> startDemoWindowed [
	"	self startDemoWindowed	"
	self startDemo: false.
]

{ #category : 'accessing' }
RaylibDemo >> beFullscreen [ 
	^beFullscreen
]

{ #category : 'accessing' }
RaylibDemo >> beFullscreen: aBoolean [
	beFullscreen := aBoolean
]

{ #category : 'accessing' }
RaylibDemo >> initWindow [
	| windowRez |
	windowRez := self windowedRes.
	beFullscreen
		ifTrue: 
			[rl
				initWindow: 0
				height: 0
				title: 'Dolphin Smalltalk Raylib Test'.
			monitorWidth := rl getMonitorWidth: 0.
			monitorHeight := rl getMonitorHeight: 0.
			rl setWindowPosition: 0 y: 0.
			rl toggleBorderlessWindowed]
		ifFalse: 
			[| iconImage |
			rl initWindow: windowRez x height: windowRez y  title: 'Dolphin Smalltalk Raylib Test'. 
			monitorWidth := windowRez x.
			monitorHeight := windowRez y.
			iconImage := rl loadImage: 'resources/ico2.png'.
			rl setWindowIcon: iconImage]
]

{ #category : 'accessing' }
RaylibDemo >> mainLoop [
	rl windowShouldClose
		ifTrue: 
			[rl closeWindow.
			shouldTerminate := true.
			^self].
	self processInput.
	self processLogic.
	self render.
]

{ #category : 'accessing' }
RaylibDemo >> processInput [
]

{ #category : 'accessing' }
RaylibDemo >> processLogic [
]

{ #category : 'accessing' }
RaylibDemo >> render [
	rl beginDrawing.
	rl clearBackground: RAYWHITE.
	
	rl endDrawing.
]

{ #category : 'accessing' }
RaylibDemo >> run [
	rl := RaylibFFI new.	
	shouldTerminate := false.
	
	random := Random new.
	self initWindow.
	self setup.
	[shouldTerminate] whileFalse: [self mainLoop].
]

{ #category : 'accessing' }
RaylibDemo >> setup [
	
]

{ #category : 'accessing' }
RaylibDemo >> windowedRes [
	^1024@768
]
