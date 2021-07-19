Class {
	#name : #RaylibFFI,
	#superclass : #Object,
	#category : #RayLib
}

{ #category : #'as yet unclassified' }
RaylibFFI >> beginDrawing [
self ffiCall: #( void BeginDrawing(void)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> beginMode2D: camera [
self ffiCall: #( void BeginMode2D(Camera2D camera)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> beginMode3D: camera [
self ffiCall: #( void BeginMode3D(Camera3D camera)) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> clearBackground: raylibColor [
self ffiCall: #( void ClearBackground(RaylibColor raylibColor) ) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> closeWindow [
self ffiCall: #( void CloseWindow(void)) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawCircleV: vector2Center radius: radius color: color [
self ffiCall: #( void DrawCircleV(Vector2 vector2Center, float radius, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawFPS: intPosX posY: intPosY [
self ffiCall: #( void DrawFPS(int intPosX, int intPosX) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawGrid: slices spacing: spacing [
self ffiCall: #( void DrawGrid(int slices, float spacing) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawLine: intStartPosX startPosY: intStartPosY endPosX: intEndPosX endPosY: intEndPosY color: color [
self ffiCall: #( void DrawLine(int intStartPosX, int intStartPosY, int intEndPosX,
					 int intEndPosY, RaylibColor color ) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawModel: model position: vector3Position scale: floatScale color: color [
self ffiCall: #( void DrawModel(RaylibModel model, Vector3 vector3Position , 
					float floatScale, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawRectangle: intPosX posY: intPosY width: intWidth height: intHeight color: color [
self ffiCall: #( void DrawRectangle(int intPosX, int intPosY, int intWidth, 
						int intHeight, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawRectangleRec: rectangle color: color [
self ffiCall: #( void DrawRectangleRec(RaylibRectangle rectangle, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawText: text [
self ffiCall: #( void DrawText(char* text) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [
self ffiCall: #( void DrawText(char* text, int posX, int posY, int fontSize, RaylibColor color ) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawTextureEx: texture position: vec2Position rotation: floatRotation scale: floatScale tint: color [
self ffiCall: #( void DrawTextureEx(RaylibTexture texture, Vector2 vec2Position, float floatRotation,
			float floatScale, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawTexturePro: texture source: rectangleSource dest: rectangleDest origin: vector2Origin rotation: floatRotation tint: color [
self ffiCall: #( void DrawTexturePro(RaylibTexture texture, RaylibRectangle rectangleSource, RaylibRectangle  rectangleDest, Vector2 vector2Origin, float floatRotation, RaylibColor color
			) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> drawTextureV: texture position: vec2Position color: color [
self ffiCall: #( void DrawTextureV(RaylibTexture texture, Vector2 vec2Position, RaylibColor color) ) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> endDrawing [
self ffiCall: #( void EndDrawing(void)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> endMode2D [
self ffiCall: #( void EndMode2D(void)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> endMode3D [
self ffiCall: #( void EndMode3D(void)) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> getMouseWheelMove [
self ffiCall: #( float GetMouseWheelMove(void) ) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> initWindow: screenWidth height: screenHeight title: screenTitle [
self ffiCall: #( void InitWindow(int screenWidth, int screenHeight, char* screenTitle)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> isKeyDown: intKey [
self ffiCall: #( bool IsKeyDown(int intKey)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> isKeyPressed: intKey [
self ffiCall: #( bool IsKeyPressed(int intKey)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> isMouseButtonDown: intButton [
self ffiCall: #( bool IsMouseButtonDown(int intButton)) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> isMouseButtonPressed: intButton [
self ffiCall: #( bool IsMouseButtonPressed(int intButton)) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> loadModel: fileName [
self ffiCall: #( RaylibModel LoadModel(char *fileName) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> loadTexture: fileName [
self ffiCall: #( RaylibTexture LoadTexture(char *fileName) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> setCameraMode: camera mode: intMode [
self ffiCall: #( void SetCameraMode(Camera3D camera, int intMode) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> setTargetFPS [
self ffiCall: #( void SetTargetFPS(int fps) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> setTargetFPS: intFps [
self ffiCall: #( void SetTargetFPS(int intFps) ) library: 'raylib.dll'.
]

{ #category : #initialization }
RaylibFFI >> setWindowState: flags [
self ffiCall: #( void SetWindowState(uint flags) ) library: 'raylib.dll'.
]

{ #category : #'as yet unclassified' }
RaylibFFI >> windowShouldClose [
self ffiCall: #( bool WindowShouldClose(void)) library: 'raylib.dll'.
]
