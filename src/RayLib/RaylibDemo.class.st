Class {
	#name : #RaylibDemo,
	#superclass : #Object,
	#instVars : [
		'rl',
		'shouldTerminate',
		'jobExecution',
		'lightGray',
		'white',
		'darkGray',
		'maroon',
		'process'
	],
	#pools : [
		'RaylibConstants'
	],
	#category : #RayLib
}

{ #category : #running }
RaylibDemo >> mainLoop [
	self processInput.
	self processLogic.
	self render.
]

{ #category : #running }
RaylibDemo >> processInput [
	rl windowShouldClose ifTrue: [ 
		rl closeWindow.
		shouldTerminate := true.	
		process terminate.
		^self ]
]

{ #category : #running }
RaylibDemo >> processLogic [
]

{ #category : #running }
RaylibDemo >> render [
	
]

{ #category : #running }
RaylibDemo >> run [ 

]

{ #category : #running }
RaylibDemo >> startProcess [
	process ifNotNil: [process terminate].
	process := [[
				self mainLoop.
				] repeat ] forkAt: Processor userBackgroundPriority .
	
]

{ #category : #running }
RaylibDemo >> stopProcess [
	process ifNotNil: [process terminate].
]
