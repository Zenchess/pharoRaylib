Class {
	#name : 'BasicWindowExample',
	#superclass : 'RaylibExample',
	#category : 'RayLibExamples',
	#package : 'RayLibExamples'
}

{ #category : 'running' }
BasicWindowExample >> render [
	rl beginDrawing.
	rl clearBackground: WHITE.
	rl drawText: 'Congrats! You created your first window!' posX: 190 posY: 200 fontSize: 20 color: LIGHTGRAY.
	rl endDrawing.
	
]

{ #category : 'running' }
BasicWindowExample >> run [
	|screenWidth screenHeight |
	screenWidth := 800.
	screenHeight := 450.
	rl := RaylibFFI new initialize.
	rl initWindow: screenWidth height: screenHeight title: 'raylib [core] example - basic window'.
	rl setTargetFPS: 60.
	[rl windowShouldClose] whileFalse: [ 
		self render.	
	 ].
	rl closeWindow.
	
]
