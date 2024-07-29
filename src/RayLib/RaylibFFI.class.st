Class {
	#name : 'RaylibFFI',
	#superclass : 'Object',
	#category : 'RayLib',
	#package : 'RayLib'
}

{ #category : 'rcore' }
RaylibFFI >> attachAudioMixedProcessor: processor [
    self ffiCall: #( void AttachAudioMixedProcessor(RaylibAudioCallback processor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> attachAudioStreamProcessor: stream processor: processor [
    self ffiCall: #( void AttachAudioStreamProcessor(RaylibAudioStream stream, RaylibAudioCallback processor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> beginBlendMode: intMode [ 
	self ffiCall: #( void BeginBlendMode(int intMode) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginDrawing [ 
	self ffiCall: #( void BeginDrawing(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginMode2d: raylibCamera2D [
	self ffiCall: #( void BeginMode2D(RaylibCamera2D raylibCamera2D) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginMode3D: raylibCamera3D [
	self ffiCall: #( void BeginMode3D(RaylibCamera3D raylibCamera3D) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginScissorMode: intX y: intY width: intWidth height: intHeight [ 
	self ffiCall: #( void BeginScissorMode(int intX, int intY, int intWidth, int intHeight) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginShaderMode: raylibShader [ 
	self ffiCall: #( void BeginShaderMode(RaylibShader raylibShader) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginTextureMode: raylibRenderTextureTarget [
	self ffiCall: #( void BeginTextureMode(RaylibRenderTexture raylibRenderTextureTarget) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> beginVrStereoMode: raylibVrStereoConfig [  
	self ffiCall: #( void BeginVrStereoMode(RaylibVrStereoConfig raylibVrStereoConfig) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> changeDirectory: dir [
    ^self ffiCall: #( bool ChangeDirectory(const char *dir) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionBoxSphere: box center: center radius: radius [
    ^self ffiCall: #( bool CheckCollisionBoxSphere(RaylibBoundingBox box, RaylibVector3 center, float radius) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionBoxes: box1 box2: box2 [
    ^self ffiCall: #( bool CheckCollisionBoxes(RaylibBoundingBox box1, RaylibBoundingBox box2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionCircleRec: center radius: radius rec: rec [
    ^self ffiCall: #( bool CheckCollisionCircleRec(RaylibVector2 center, float radius, RaylibRectangle rec) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionCircles: center1 radius1: radius1 center2: center2 radius2: radius2 [
    ^self ffiCall: #( bool CheckCollisionCircles(RaylibVector2 center1, float radius1, RaylibVector2 center2, float radius2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionLines: startPos1 endPos1: endPos1 startPos2: startPos2 endPos2: endPos2 collisionPoint: collisionPoint [
    ^self ffiCall: #( bool CheckCollisionLines(RaylibVector2 startPos1, RaylibVector2 endPos1, RaylibVector2 startPos2, RaylibVector2 endPos2, RaylibVector2 *collisionPoint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionPointCircle: point center: center radius: radius [
    ^self ffiCall: #( bool CheckCollisionPointCircle(RaylibVector2 point, RaylibVector2 center, float radius) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionPointLine: point p1: p1 p2: p2 threshold: threshold [
    ^self ffiCall: #( bool CheckCollisionPointLine(RaylibVector2 point, RaylibVector2 p1, RaylibVector2 p2, int threshold) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionPointPoly: point points: points pointCount: pointCount [
    ^self ffiCall: #( bool CheckCollisionPointPoly(RaylibVector2 point, RaylibVector2 *points, int pointCount) ) library: RaylibLibrary

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionPointRec: point rec: rec [
    ^self ffiCall: #( bool CheckCollisionPointRec(RaylibVector2 point, RaylibRectangle rec) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionPointTriangle: point p1: p1 p2: p2 p3: p3 [
    ^self ffiCall: #( bool CheckCollisionPointTriangle(RaylibVector2 point, RaylibVector2 p1, RaylibVector2 p2, RaylibVector2 p3) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionRecs: rec1 rec2: rec2 [
    ^self ffiCall: #( bool CheckCollisionRecs(RaylibRectangle rec1, RaylibRectangle rec2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> checkCollisionSpheres: center1 radius1: radius1 center2: center2 radius2: radius2 [
    ^self ffiCall: #( bool CheckCollisionSpheres(RaylibVector3 center1, float radius1, RaylibVector3 center2, float radius2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> clearBackground: raylibColor [
	self ffiCall: #( void ClearBackground(RaylibColor raylibColor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> clearWindowState: intFlags [
	self ffiCall: #( bool ClearWindowState(uint32 intFlags) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> closeAudioDevice [
    self ffiCall: #( void CloseAudioDevice(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> closeWindow [
	self ffiCall: #( void CloseWindow(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> codepointToUTF8: codepoint utf8Size: utf8Size [
    ^self ffiCall: #( const char* CodepointToUTF8(int codepoint, int *utf8Size) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorAlpha: color alpha: alpha [
    ^self ffiCall: #( RaylibColor ColorAlpha(RaylibColor color, float alpha) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorAlphaBlend: dst src: src tint: tint [
    ^self ffiCall: #( RaylibColor ColorAlphaBlend(RaylibColor dst, RaylibColor src, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorBrightness: color factor: factor [
    ^self ffiCall: #( RaylibColor ColorBrightness(RaylibColor color, float factor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorContrast: color contrast: contrast [
    ^self ffiCall: #( RaylibColor ColorContrast(RaylibColor color, float contrast) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorFromHSV: hue saturation: saturation value: value [
    ^self ffiCall: #( RaylibColor ColorFromHSV(float hue, float saturation, float value) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorFromNormalized: normalized [
    ^self ffiCall: #( RaylibColor ColorFromNormalized(RaylibVector4 normalized) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorNormalize: color [
    ^self ffiCall: #( RaylibVector4 ColorNormalize(RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorTint: color tint: tint [
    ^self ffiCall: #( RaylibColor ColorTint(RaylibColor color, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorToHSV: color [
    ^self ffiCall: #( RaylibVector3 ColorToHSV(RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> colorToInt: color [
    ^self ffiCall: #( int ColorToInt(RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> compressData: data dataSize: dataSize compDataSize: compDataSize [
    ^self ffiCall: #( unsigned char* CompressData(const uchar *data, int dataSize, int *compDataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> decodeDataBase64: data outputSize: outputSize [
    ^self ffiCall: #( unsigned char* DecodeDataBase64(const uchar *data, int *outputSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> decompressData: compData compDataSize: compDataSize dataSize: dataSize [
    ^self ffiCall: #( unsigned char* DecompressData(const uchar *compData, int compDataSize, int *dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> detachAudioMixedProcessor: processor [
    self ffiCall: #( void DetachAudioMixedProcessor(RaylibAudioCallback processor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> detachAudioStreamProcessor: stream processor: processor [
    self ffiCall: #( void DetachAudioStreamProcessor(RaylibAudioStream stream, RaylibAudioCallback processor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> directoryExists: dirPath [
    ^self ffiCall: #( bool DirectoryExists(const char *dirPath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> disableCursor [ 
	self ffiCall: #( void DisableCursor(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> disableEventWaiting [ 
	self ffiCall: #( void DisableEventWaiting(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> drawBillboard: camera texture: texture position: position size: size tint: tint [
    self ffiCall: #( void DrawBillboard(RaylibCamera3D camera, RaylibTexture2D texture, RaylibVector3 position, float size, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawBillboardPro: camera texture: texture source: source position: position up: up size: size origin: origin rotation: rotation tint: tint [
    self ffiCall: #( void DrawBillboardPro(RaylibCamera3D camera, RaylibTexture2D texture, RaylibRectangle source, RaylibVector3 position, RaylibVector3 up, RaylibVector2 size, RaylibVector2 origin, float rotation, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawBillboardRec: camera texture: texture source: source position: position size: size tint: tint [
    self ffiCall: #( void DrawBillboardRec(RaylibCamera3D camera, RaylibTexture2D texture, RaylibRectangle source, RaylibVector3 position, RaylibVector2 size, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawBoundingBox: box color: color [
    self ffiCall: #( void DrawBoundingBox(RaylibBoundingBox box, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCapsule: startPos endPos: endPos radius: radius slices: slices rings: rings color: color [
    self ffiCall: #( void DrawCapsule(RaylibVector3 startPos, RaylibVector3 endPos, float radius, int slices, int rings, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCapsuleWires: startPos endPos: endPos radius: radius slices: slices rings: rings color: color [
    self ffiCall: #( void DrawCapsuleWires(RaylibVector3 startPos, RaylibVector3 endPos, float radius, int slices, int rings, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircle3D: center radius: radius rotationAxis: rotationAxis rotationAngle: rotationAngle color: color [
    self ffiCall: #( void DrawCircle3D(RaylibVector3 center, float radius, RaylibVector3 rotationAxis, float rotationAngle, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircle: centerX centerY: centerY radius: radius color: color [
    self ffiCall: #( void DrawCircle(int centerX, int centerY, float radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleGradient: centerX centerY: centerY radius: radius color1: color1 color2: color2 [
    self ffiCall: #( void DrawCircleGradient(int centerX, int centerY, float radius, RaylibColor color1, RaylibColor color2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleLines: centerX centerY: centerY radius: radius color: color [
    self ffiCall: #( void DrawCircleLines(int centerX, int centerY, float radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleLinesV: center radius: radius color: color [
    self ffiCall: #( void DrawCircleLinesV(RaylibVector2 center, float radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleSector: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
    self ffiCall: #( void DrawCircleSector(RaylibVector2 center, float radius, float startAngle, float endAngle, int segments, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleSectorLines: center radius: radius startAngle: startAngle endAngle: endAngle segments: segments color: color [
    self ffiCall: #( void DrawCircleSectorLines(RaylibVector2 center, float radius, float startAngle, float endAngle, int segments, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCircleV: center radius: radius color: color [
    self ffiCall: #( void DrawCircleV(RaylibVector2 center, float radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCube: position width: width height: height length: length color: color [
    self ffiCall: #( void DrawCube(RaylibVector3 position, float width, float height, float length, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCubeV: position size: size color: color [
    self ffiCall: #( void DrawCubeV(RaylibVector3 position, RaylibVector3 size, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCubeWires: position width: width height: height length: length color: color [
    self ffiCall: #( void DrawCubeWires(RaylibVector3 position, float width, float height, float length, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCubeWiresV: position size: size color: color [
    self ffiCall: #( void DrawCubeWiresV(RaylibVector3 position, RaylibVector3 size, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCylinder: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
    self ffiCall: #( void DrawCylinder(RaylibVector3 position, float radiusTop, float radiusBottom, float height, int slices, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCylinderEx: startPos endPos: endPos startRadius: startRadius endRadius: endRadius sides: sides color: color [
    self ffiCall: #( void DrawCylinderEx(RaylibVector3 startPos, RaylibVector3 endPos, float startRadius, float endRadius, int sides, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCylinderWires: position radiusTop: radiusTop radiusBottom: radiusBottom height: height slices: slices color: color [
    self ffiCall: #( void DrawCylinderWires(RaylibVector3 position, float radiusTop, float radiusBottom, float height, int slices, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawCylinderWiresEx: startPos endPos: endPos startRadius: startRadius endRadius: endRadius sides: sides color: color [
    self ffiCall: #( void DrawCylinderWiresEx(RaylibVector3 startPos, RaylibVector3 endPos, float startRadius, float endRadius, int sides, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawEllipse: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
    self ffiCall: #( void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawEllipseLines: centerX centerY: centerY radiusH: radiusH radiusV: radiusV color: color [
    self ffiCall: #( void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawFPS: posX posY: posY [
    self ffiCall: #( void DrawFPS(int posX, int posY) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawGrid: slices spacing: spacing [
    self ffiCall: #( void DrawGrid(int slices, float spacing) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLine3D: startPos endPos: endPos color: color [
    self ffiCall: #( void DrawLine3D(RaylibVector3 startPos, RaylibVector3 endPos, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLine: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [
    self ffiCall: #( void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLineBezier: startPos endPos: endPos thick: thick color: color [
    self ffiCall: #( void DrawLineBezier(RaylibVector2 startPos, RaylibVector2 endPos, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLineEx: startPos endPos: endPos thick: thick color: color [
    self ffiCall: #( void DrawLineEx(RaylibVector2 startPos, RaylibVector2 endPos, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLineStrip: points pointCount: pointCount color: color [
    self ffiCall: #( void DrawLineStrip(RaylibVector2 *points, int pointCount, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawLineV: startPos endPos: endPos color: color [
    self ffiCall: #( void DrawLineV(RaylibVector2 startPos, RaylibVector2 endPos, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawMesh: mesh material: material transform: transform [
    self ffiCall: #( void DrawMesh(RaylibMesh mesh, RaylibMaterial material, RaylibMatrix transform) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawMeshInstanced: mesh material: material transforms: transforms instances: instances [
    self ffiCall: #( void DrawMeshInstanced(RaylibMesh mesh, RaylibMaterial material, const RaylibMatrix *transforms, int instances) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawModel: model position: position scale: scale tint: tint [
    self ffiCall: #( void DrawModel(RaylibModel model, RaylibVector3 position, float scale, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawModelEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
    self ffiCall: #( void DrawModelEx(RaylibModel model, RaylibVector3 position, RaylibVector3 rotationAxis, float rotationAngle, RaylibVector3 scale, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawModelWires: model position: position scale: scale tint: tint [
    self ffiCall: #( void DrawModelWires(RaylibModel model, RaylibVector3 position, float scale, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawModelWiresEx: model position: position rotationAxis: rotationAxis rotationAngle: rotationAngle scale: scale tint: tint [
    self ffiCall: #( void DrawModelWiresEx(RaylibModel model, RaylibVector3 position, RaylibVector3 rotationAxis, float rotationAngle, RaylibVector3 scale, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPixel: posX posY: posY color: color [
    self ffiCall: #( void DrawPixel(int posX, int posY, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPixelV: position color: color [
    self ffiCall: #( void DrawPixelV(RaylibVector2 position, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPlane: centerPos size: size color: color [
    self ffiCall: #( void DrawPlane(RaylibVector3 centerPos, RaylibVector2 size, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPoint3D: position color: color [
    self ffiCall: #( void DrawPoint3D(RaylibVector3 position, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPoly: center sides: sides radius: radius rotation: rotation color: color [
    self ffiCall: #( void DrawPoly(RaylibVector2 center, int sides, float radius, float rotation, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPolyLines: center sides: sides radius: radius rotation: rotation color: color [
    self ffiCall: #( void DrawPolyLines(RaylibVector2 center, int sides, float radius, float rotation, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawPolyLinesEx: center sides: sides radius: radius rotation: rotation lineThick: lineThick color: color [
    self ffiCall: #( void DrawPolyLinesEx(RaylibVector2 center, int sides, float radius, float rotation, float lineThick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRay: ray color: color [
    self ffiCall: #( void DrawRay(RaylibRay ray, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangle: posX posY: posY width: width height: height color: color [
    self ffiCall: #( void DrawRectangle(int posX, int posY, int width, int height, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleGradientEx: rec col1: col1 col2: col2 col3: col3 col4: col4 [
    self ffiCall: #( void DrawRectangleGradientEx(RaylibRectangle rec, RaylibColor col1, RaylibColor col2, RaylibColor col3, RaylibColor col4) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleGradientH: posX posY: posY width: width height: height color1: color1 color2: color2 [
    self ffiCall: #( void DrawRectangleGradientH(int posX, int posY, int width, int height, RaylibColor color1, RaylibColor color2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleGradientV: posX posY: posY width: width height: height color1: color1 color2: color2 [
    self ffiCall: #( void DrawRectangleGradientV(int posX, int posY, int width, int height, RaylibColor color1, RaylibColor color2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleLines: posX posY: posY width: width height: height color: color [
    self ffiCall: #( void DrawRectangleLines(int posX, int posY, int width, int height, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleLinesEx: rec lineThick: lineThick color: color [
    self ffiCall: #( void DrawRectangleLinesEx(RaylibRectangle rec, float lineThick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectanglePro: rec origin: origin rotation: rotation color: color [
    self ffiCall: #( void DrawRectanglePro(RaylibRectangle rec, RaylibVector2 origin, float rotation, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleRec: rec color: color [
    self ffiCall: #( void DrawRectangleRec(RaylibRectangle rec, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleRounded: rec roundness: roundness segments: segments color: color [
    self ffiCall: #( void DrawRectangleRounded(RaylibRectangle rec, float roundness, int segments, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleRoundedLines: rec roundness: roundness segments: segments lineThick: lineThick color: color [
    self ffiCall: #( void DrawRectangleRoundedLines(RaylibRectangle rec, float roundness, int segments, float lineThick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRectangleV: position size: size color: color [
    self ffiCall: #( void DrawRectangleV(RaylibVector2 position, RaylibVector2 size, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRing: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
    self ffiCall: #( void DrawRing(RaylibVector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawRingLines: center innerRadius: innerRadius outerRadius: outerRadius startAngle: startAngle endAngle: endAngle segments: segments color: color [
    self ffiCall: #( void DrawRingLines(RaylibVector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSphere: centerPos radius: radius color: color [
    self ffiCall: #( void DrawSphere(RaylibVector3 centerPos, float radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSphereEx: centerPos radius: radius rings: rings slices: slices color: color [
    self ffiCall: #( void DrawSphereEx(RaylibVector3 centerPos, float radius, int rings, int slices, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSphereWires: centerPos radius: radius rings: rings slices: slices color: color [
    self ffiCall: #( void DrawSphereWires(RaylibVector3 centerPos, float radius, int rings, int slices, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineBasis: points pointCount: pointCount thick: thick color: color [
    self ffiCall: #( void DrawSplineBasis(RaylibVector2 *points, int pointCount, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineBezierCubic: points pointCount: pointCount thick: thick color: color [
    self ffiCall: #( void DrawSplineBezierCubic(RaylibVector2 *points, int pointCount, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineBezierQuadratic: points pointCount: pointCount thick: thick color: color [
    self ffiCall: #( void DrawSplineBezierQuadratic(RaylibVector2 *points, int pointCount, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineCatmullRom: points pointCount: pointCount thick: thick color: color [
    self ffiCall: #( void DrawSplineCatmullRom(RaylibVector2 *points, int pointCount, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineLinear: points pointCount: pointCount thick: thick color: color [
    self ffiCall: #( void DrawSplineLinear(RaylibVector2 *points, int pointCount, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineSegmentBasis: p1 p2: p2 p3: p3 p4: p4 thick: thick color: color [
    self ffiCall: #( void DrawSplineSegmentBasis(RaylibVector2 p1, RaylibVector2 p2, RaylibVector2 p3, RaylibVector2 p4, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineSegmentBezierCubic: p1 c2: c2 c3: c3 p4: p4 thick: thick color: color [
    self ffiCall: #( void DrawSplineSegmentBezierCubic(RaylibVector2 p1, RaylibVector2 c2, RaylibVector2 c3, RaylibVector2 p4, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineSegmentBezierQuadratic: p1 c2: c2 p3: p3 thick: thick color: color [
    self ffiCall: #( void DrawSplineSegmentBezierQuadratic(RaylibVector2 p1, RaylibVector2 c2, RaylibVector2 p3, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineSegmentCatmullRom: p1 p2: p2 p3: p3 p4: p4 thick: thick color: color [
    self ffiCall: #( void DrawSplineSegmentCatmullRom(RaylibVector2 p1, RaylibVector2 p2, RaylibVector2 p3, RaylibVector2 p4, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawSplineSegmentLinear: p1 p2: p2 thick: thick color: color [
    self ffiCall: #( void DrawSplineSegmentLinear(RaylibVector2 p1, RaylibVector2 p2, float thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawText: text posX: posX posY: posY fontSize: fontSize color: color [
    self ffiCall: #( void DrawText(const char *text, int posX, int posY, int fontSize, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextCodepoint: font codepoint: codepoint position: position fontSize: fontSize tint: tint [
    self ffiCall: #( void DrawTextCodepoint(RaylibFont font, int codepoint, RaylibVector2 position, float fontSize, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextCodepoints: font codepoints: codepoints codepointCount: codepointCount position: position fontSize: fontSize spacing: spacing tint: tint [
    self ffiCall: #( void DrawTextCodepoints(RaylibFont font, const int *codepoints, int codepointCount, RaylibVector2 position, float fontSize, float spacing, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextEx: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
    self ffiCall: #( void DrawTextEx(RaylibFont font, const char *text, RaylibVector2 position, float fontSize, float spacing, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextPro: font text: text position: position origin: origin rotation: rotation fontSize: fontSize spacing: spacing tint: tint [
    self ffiCall: #( void DrawTextPro(RaylibFont font, const char *text, RaylibVector2 position, RaylibVector2 origin, float rotation, float fontSize, float spacing, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTexture: texture posX: posX posY: posY tint: tint [
    self ffiCall: #( void DrawTexture(RaylibTexture2D texture, int posX, int posY, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextureEx: texture position: position rotation: rotation scale: scale tint: tint [
    self ffiCall: #( void DrawTextureEx(RaylibTexture2D texture, RaylibVector2 position, float rotation, float scale, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextureNPatch: texture nPatchInfo: nPatchInfo dest: dest origin: origin rotation: rotation tint: tint [
    self ffiCall: #( void DrawTextureNPatch(RaylibTexture2D texture, RaylibNPatchInfo nPatchInfo, RaylibRectangle dest, RaylibVector2 origin, float rotation, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTexturePro: texture source: source dest: dest origin: origin rotation: rotation tint: tint [
    self ffiCall: #( void DrawTexturePro(RaylibTexture2D texture, RaylibRectangle source, RaylibRectangle dest, RaylibVector2 origin, float rotation, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextureRec: texture source: source position: position tint: tint [
    self ffiCall: #( void DrawTextureRec(RaylibTexture2D texture, RaylibRectangle source, RaylibVector2 position, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTextureV: texture position: position tint: tint [
    self ffiCall: #( void DrawTextureV(RaylibTexture2D texture, RaylibVector2 position, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangle3D: v1 v2: v2 v3: v3 color: color [
    self ffiCall: #( void DrawTriangle3D(RaylibVector3 v1, RaylibVector3 v2, RaylibVector3 v3, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangle: v1 v2: v2 v3: v3 color: color [
    self ffiCall: #( void DrawTriangle(RaylibVector2 v1, RaylibVector2 v2, RaylibVector2 v3, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangleFan: points pointCount: pointCount color: color [
    self ffiCall: #( void DrawTriangleFan(RaylibVector2 *points, int pointCount, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangleLines: v1 v2: v2 v3: v3 color: color [
    self ffiCall: #( void DrawTriangleLines(RaylibVector2 v1, RaylibVector2 v2, RaylibVector2 v3, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangleStrip3D: points pointCount: pointCount color: color [
    self ffiCall: #( void DrawTriangleStrip3D(RaylibVector3 *points, int pointCount, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> drawTriangleStrip: points pointCount: pointCount color: color [
    self ffiCall: #( void DrawTriangleStrip(RaylibVector2 *points, int pointCount, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> enableCursor [ 
	self ffiCall: #( void EnableCursor(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> enableEventWaiting [ 
	self ffiCall: #( void EnableEventWaiting(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> encodeDataBase64: data dataSize: dataSize outputSize: outputSize [
    ^self ffiCall: #( char* EncodeDataBase64(const unsigned char *data, int dataSize, int *outputSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> endBlendMode [ 
	self ffiCall: #( void EndBlendMode(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endDrawing [ 
	self ffiCall: #( void EndDrawing(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endMode2D [ 
	self ffiCall: #( void EndMode2D(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endMode3D [ 
	self ffiCall: #( void EndMode3D(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endScissorMode [ 
	self ffiCall: #( void EndScissorMode(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endShaderMode [ 
	self ffiCall: #( void EndShaderMode(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endTextureMode [ 
	self ffiCall: #( void EndTextureMode(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> endVrStereoMode [ 
	self ffiCall: #( void EndVrStereoMode(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> exportAutomationEventList: list fileName: fileName [
^self ffiCall: #( bool ExportAutomationEventList(RaylibAutomationEventList list, const char *fileName) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> exportDataAsCode: data dataSize: dataSize fileName: fileName [
    ^self ffiCall: #( bool ExportDataAsCode(const unsigned char *data, int dataSize, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportFontAsCode: font fileName: fileName [
    ^self ffiCall: #( bool ExportFontAsCode(RaylibFont font, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportImage: image fileName: fileName [
    ^self ffiCall: #( bool ExportImage(RaylibImage image, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportImageAsCode: image fileName: fileName [
    ^self ffiCall: #( bool ExportImageAsCode(RaylibImage image, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportImageToMemory: image fileType: fileType fileSize: fileSize [
    ^self ffiCall: #( uchar* ExportImageToMemory(RaylibImage image, const char *fileType, int *fileSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportMesh: mesh fileName: fileName [
    ^self ffiCall: #( bool ExportMesh(RaylibMesh mesh, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportWave: wave fileName: fileName [
    ^self ffiCall: #( bool ExportWave(RaylibWave wave, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> exportWaveAsCode: wave fileName: fileName [
    ^self ffiCall: #( bool ExportWaveAsCode(RaylibWave wave, const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> fade: color alpha: alpha [
    ^self ffiCall: #( RaylibColor Fade(RaylibColor color, float alpha) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> fileExists: fileName [
    ^self ffiCall: #( bool FileExists(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageCellular: width height: height tileSize: tileSize [
    ^self ffiCall: #( RaylibImage GenImageCellular(int width, int height, int tileSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageChecked: width height: height checksX: checksX checksY: checksY col1: col1 col2: col2 [
    ^self ffiCall: #( RaylibImage GenImageChecked(int width, int height, int checksX, int checksY, RaylibColor col1, RaylibColor col2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageColor: width height: height color: color [
    ^self ffiCall: #( RaylibImage GenImageColor(int width, int height, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageFontAtlas: glyphs glyphRecs: glyphRecs glyphCount: glyphCount fontSize: fontSize padding: padding packMethod: packMethod [
    ^self ffiCall: #( RaylibImage GenImageFontAtlas(const RaylibGlyphInfo *glyphs, RaylibRectangle **glyphRecs, int glyphCount, int fontSize, int padding, int packMethod) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageGradientLinear: width height: height direction: direction start: start end: end [
    ^self ffiCall: #( RaylibImage GenImageGradientLinear(int width, int height, int direction, RaylibColor start, RaylibColor end) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageGradientRadial: width height: height density: density inner: inner outer: outer [
    ^self ffiCall: #( RaylibImage GenImageGradientRadial(int width, int height, float density, RaylibColor inner, RaylibColor outer) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageGradientSquare: width height: height density: density inner: inner outer: outer [
    ^self ffiCall: #( RaylibImage GenImageGradientSquare(int width, int height, float density, RaylibColor inner, RaylibColor outer) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImagePerlinNoise: width height: height offsetX: offsetX offsetY: offsetY scale: scale [
    ^self ffiCall: #( RaylibImage GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageText: width height: height text: text [
    ^self ffiCall: #( RaylibImage GenImageText(int width, int height, const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genImageWhiteNoise: width height: height factor: factor [
    ^self ffiCall: #( RaylibImage GenImageWhiteNoise(int width, int height, float factor) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshCone: radius height: height slices: slices [
    ^self ffiCall: #( RaylibMesh GenMeshCone(float radius, float height, int slices) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshCube: width height: height length: length [
    ^self ffiCall: #( RaylibMesh GenMeshCube(float width, float height, float length) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshCubicmap: cubicmap cubeSize: cubeSize [
    ^self ffiCall: #( RaylibMesh GenMeshCubicmap(RaylibImage cubicmap, RaylibVector3 cubeSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshCylinder: radius height: height slices: slices [
    ^self ffiCall: #( RaylibMesh GenMeshCylinder(float radius, float height, int slices) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshHeightmap: heightmap size: size [
    ^self ffiCall: #( RaylibMesh GenMeshHeightmap(RaylibImage heightmap, RaylibVector3 size) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshHemiSphere: radius rings: rings slices: slices [
    ^self ffiCall: #( RaylibMesh GenMeshHemiSphere(float radius, int rings, int slices) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshKnot: radius size: size radSeg: radSeg sides: sides [
    ^self ffiCall: #( RaylibMesh GenMeshKnot(float radius, float size, int radSeg, int sides) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshPlane: width length: length resX: resX resZ: resZ [
    ^self ffiCall: #( RaylibMesh GenMeshPlane(float width, float length, int resX, int resZ) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshPoly: sides radius: radius [
    ^self ffiCall: #( RaylibMesh GenMeshPoly(int sides, float radius) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshSphere: radius rings: rings slices: slices [
    ^self ffiCall: #( RaylibMesh GenMeshSphere(float radius, int rings, int slices) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshTangents: mesh [
    self ffiCall: #( void GenMeshTangents(RaylibMesh *mesh) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genMeshTorus: radius size: size radSeg: radSeg sides: sides [
    ^self ffiCall: #( RaylibMesh GenMeshTorus(float radius, float size, int radSeg, int sides) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> genTextureMipmaps: texture [
    self ffiCall: #( void GenTextureMipmaps(RaylibTexture2D *texture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getApplicationDirectory [
    ^self ffiCall: #( const char* GetApplicationDirectory(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCameraMatrix2D: camera [
self ffiCall: #( RaylibMatrix GetCameraMatrix2D(RaylibCamera2D camera) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getCameraMatrix: camera [
self ffiCall: #( RaylibMatrix GetCameraMatrix(RaylibCamera camera) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getCharPressed [
    ^self ffiCall: #( int GetCharPressed(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getClipboardText [ 
	self ffiCall: #( const char *GetClipboardText(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getCodepoint: text codepointSize: codepointSize [
    ^self ffiCall: #( int GetCodepoint(const char *text, int *codepointSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCodepointCount: text [
    ^self ffiCall: #( int GetCodepointCount(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCodepointNext: text codepointSize: codepointSize [
    ^self ffiCall: #( int GetCodepointNext(const char *text, int *codepointSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCodepointPrevious: text codepointSize: codepointSize [
    ^self ffiCall: #( int GetCodepointPrevious(const char *text, int *codepointSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCollisionRec: rec1 rec2: rec2 [
    ^self ffiCall: #( RaylibRectangle GetCollisionRec(RaylibRectangle rec1, RaylibRectangle rec2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getColor: hexValue [
    ^self ffiCall: #( RaylibColor GetColor(uint32 hexValue) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getCurrentMonitor [
	self ffiCall: #( int GetCurrentMonitor(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getCurrentMonitor: intMonitor [
	self ffiCall: #( RaylibVector2 GetMonitorPosition(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getDirectoryPath: filePath [
    ^self ffiCall: #( const char* GetDirectoryPath(const char *filePath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFPS [
self ffiCall: #( int GetFPS(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getFileExtension: fileName [
    ^self ffiCall: #( const char* GetFileExtension(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFileLength: fileName [
    ^self ffiCall: #( int GetFileLength(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFileModTime: fileName [
    ^self ffiCall: #( long GetFileModTime(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFileName: filePath [
    ^self ffiCall: #( const char* GetFileName(const char *filePath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFileNameWithoutExt: filePath [
    ^self ffiCall: #( const char* GetFileNameWithoutExt(const char *filePath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFontDefault [
    ^self ffiCall: #( RaylibFont GetFontDefault(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getFrameTime [
self ffiCall: #( float GetFrameTime(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getGamepadAxisCount: gamepad [
    ^self ffiCall: #( int GetGamepadAxisCount(int gamepad) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGamepadAxisMovement: gamepad axis: axis [
    ^self ffiCall: #( float GetGamepadAxisMovement(int gamepad, int axis) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGamepadButtonPressed [
    ^self ffiCall: #( int GetGamepadButtonPressed() ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGamepadName: gamepad [
    ^self ffiCall: #( const char* GetGamepadName(int gamepad) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGestureDetected [
    ^self ffiCall: #( int GetGestureDetected(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGestureDragAngle [
    ^self ffiCall: #( float GetGestureDragAngle(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGestureDragVector [
    ^self ffiCall: #( RaylibVector2 GetGestureDragVector(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGestureHoldDuration [
    ^self ffiCall: #( float GetGestureHoldDuration(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGesturePinchAngle [
    ^self ffiCall: #( float GetGesturePinchAngle(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGesturePinchVector [
    ^self ffiCall: #( RaylibVector2 GetGesturePinchVector(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGlyphAtlasRec: font codepoint: codepoint [
    ^self ffiCall: #( RaylibRectangle GetGlyphAtlasRec(RaylibFont font, int codepoint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGlyphIndex: font codepoint: codepoint [
    ^self ffiCall: #( int GetGlyphIndex(RaylibFont font, int codepoint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getGlyphInfo: font codepoint: codepoint [
    ^self ffiCall: #( RaylibGlyphInfo GetGlyphInfo(RaylibFont font, int codepoint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getImageAlphaBorder: image threshold: threshold [
    ^self ffiCall: #( RaylibRectangle GetImageAlphaBorder(RaylibImage image, float threshold) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getImageColor: image x: x y: y [
    ^self ffiCall: #( RaylibColor GetImageColor(RaylibImage image, int x, int y) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getKeyPressed [
    ^self ffiCall: #( int GetKeyPressed(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMasterVolume [
    ^self ffiCall: #( float GetMasterVolume(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMeshBoundingBox: mesh [
    ^self ffiCall: #( RaylibBoundingBox GetMeshBoundingBox(RaylibMesh mesh) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getModelBoundingBox: model [
    ^self ffiCall: #( RaylibBoundingBox GetModelBoundingBox(RaylibModel model) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMonitorCount [
	self ffiCall: #( int GetMonitorCount(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorHeight: intMonitor [
	self ffiCall: #( int GetMonitorHeight(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorName: intMonitor [ 
	self ffiCall: #( const char *GetMonitorName(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorPhysicalHeight: intMonitor [
	self ffiCall: #( int GetMonitorPhysicalHeight(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorPhysicalWidth: intMonitor [
	self ffiCall: #( int GetMonitorPhysicalWidth(int monitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorPosition: intMonitor [
	self ffiCall: #( RaylibVector2 GetMonitorPosition(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorRefreshRate: intMonitor [
	self ffiCall: #( int GetMonitorRefreshRate(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMonitorWidth: intMonitor [
	self ffiCall: #( int GetMonitorWidth(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMouseDelta [
    ^self ffiCall: #( RaylibVector2 GetMouseDelta(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMousePosition [
    ^self ffiCall: #( RaylibVector2 GetMousePosition(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMouseRay: mousePosition camera: raylibCamera [
self ffiCall: #( RaylibRay GetMouseRay(RaylibVector2 mousePosition, RaylibCamera raylibCamera) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getMouseWheelMove [
    ^self ffiCall: #( float GetMouseWheelMove(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMouseWheelMoveV [
    ^self ffiCall: #( RaylibVector2 GetMouseWheelMoveV(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMouseX [
    ^self ffiCall: #( int GetMouseX(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMouseY [
    ^self ffiCall: #( int GetMouseY(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMusicTimeLength: music [
    ^self ffiCall: #( float GetMusicTimeLength(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getMusicTimePlayed: music [
    ^self ffiCall: #( float GetMusicTimePlayed(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getPixelColor: srcPtr format: format [
    ^self ffiCall: #( RaylibColor GetPixelColor(void *srcPtr, int format) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getPixelDataSize: width height: height format: format [
    ^self ffiCall: #( int GetPixelDataSize(int width, int height, int format) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getPrevDirectoryPath: dirPath [
    ^self ffiCall: #( const char* GetPrevDirectoryPath(const char *dirPath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRandomValue: intMin max: intMax [
	self ffiCall: #( int GetRandomValue(int intMin, int intMax) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getRayCollisionBox: ray box: box [
    ^self ffiCall: #( RaylibRayCollision GetRayCollisionBox(RaylibRay ray, RaylibBoundingBox box) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRayCollisionMesh: ray mesh: mesh transform: transform [
    ^self ffiCall: #( RaylibRayCollision GetRayCollisionMesh(RaylibRay ray, RaylibMesh mesh, RaylibMatrix transform) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRayCollisionQuad: ray p1: p1 p2: p2 p3: p3 p4: p4 [
    ^self ffiCall: #( RaylibRayCollision GetRayCollisionQuad(RaylibRay ray, RaylibVector3 p1, RaylibVector3 p2, RaylibVector3 p3, RaylibVector3 p4) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRayCollisionSphere: ray center: center radius: radius [
    ^self ffiCall: #( RaylibRayCollision GetRayCollisionSphere(RaylibRay ray, RaylibVector3 center, float radius) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRayCollisionTriangle: ray p1: p1 p2: p2 p3: p3 [
    ^self ffiCall: #( RaylibRayCollision GetRayCollisionTriangle(RaylibRay ray, RaylibVector3 p1, RaylibVector3 p2, RaylibVector3 p3) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getRenderHeight [
	self ffiCall: #( int GetRenderHeight(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getRenderWidth [
	self ffiCall: #( int GetRenderWidth(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getScreenHeight [
	self ffiCall: #( int GetScreenHeight(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getScreenToWorld2D: position camera: camera2D [
self ffiCall: #( RaylibVector2 GetScreenToWorld2D(RaylibVector2 position, RaylibCamera2D camera2D) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getScreenWidth [
	self ffiCall: #( int GetScreenWidth(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getShaderLocation: raylibShader uniformName: stringUniformName [
self ffiCall: #( int GetShaderLocation(RaylibShader raylibShader, const char *stringUniformName) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getShaderLocationAttrib: raylibShader attribName: stringAttribName [
self ffiCall: #( int GetShaderLocationAttrib(RaylibShader raylibShader, const char *stringAttribName) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getShaderValue: raylibShader locIndex: intLocIndex value: pointerToValue uniformType: intUniformType [
self ffiCall: #( void SetShaderValue(RaylibShader raylibShader, int intLocIndex, const void *pointerToValue, int intUniformType) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getSplinePointBasis: p1 p2: p2 p3: p3 p4: p4 t: t [
    ^self ffiCall: #( RaylibVector2 GetSplinePointBasis(RaylibVector2 p1, RaylibVector2 p2, RaylibVector2 p3, RaylibVector2 p4, float t) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getSplinePointBezierCubic: p1 c2: c2 c3: c3 p4: p4 t: t [
    ^self ffiCall: #( RaylibVector2 GetSplinePointBezierCubic(RaylibVector2 p1, RaylibVector2 c2, RaylibVector2 c3, RaylibVector2 p4, float t) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getSplinePointBezierQuad: p1 c2: c2 p3: p3 t: t [
    ^self ffiCall: #( RaylibVector2 GetSplinePointBezierQuad(RaylibVector2 p1, RaylibVector2 c2, RaylibVector2 p3, float t) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getSplinePointCatmullRom: p1 p2: p2 p3: p3 p4: p4 t: t [
    ^self ffiCall: #( RaylibVector2 GetSplinePointCatmullRom(RaylibVector2 p1, RaylibVector2 p2, RaylibVector2 p3, RaylibVector2 p4, float t) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getSplinePointLinear: startPos endPos: endPos t: t [
    ^self ffiCall: #( RaylibVector2 GetSplinePointLinear(RaylibVector2 startPos, RaylibVector2 endPos, float t) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getTime [
self ffiCall: #( double GetTime(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getTouchPointCount [
    ^self ffiCall: #( int GetTouchPointCount(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getTouchPointId: index [
    ^self ffiCall: #( int GetTouchPointId(int index) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getTouchPosition: index [
    ^self ffiCall: #( RaylibVector2 GetTouchPosition(int index) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getTouchX [
    ^self ffiCall: #( int GetTouchX(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getTouchY [
    ^self ffiCall: #( int GetTouchY(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getWindowHandle [
	self ffiCall: #( void *GetWindowHandle(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getWindowPosition [ 
	self ffiCall: #( RaylibVector2 GetWindowPosition(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getWindowScaleDPI [ 
	self ffiCall: #( RaylibVector2 GetWindowScaleDPI(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getWorkingDirectory [
    ^self ffiCall: #( const char* GetWorkingDirectory(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> getWorldToScreen2D: vector2Position camera: camera2D [
self ffiCall: #( RaylibVector2 GetWorldToScreen2D(RaylibVector2 vector2Position, RaylibCamera2D camera2D) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getWorldToScreen: position camera: camera3D [
self ffiCall: #( Vector2 GetWorldToScreen(RaylibVector3 position, RaylibCamera3D camera3D) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> getWorldToScreenEx: vector3Position camera: camera3D width: width height: height [
self ffiCall: #( RaylibVector2 GetWorldToScreenEx(RaylibVector3 vector3Position, RaylibCamera3D camera3D, int width, int height) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> hideCursor [ 
	self ffiCall: #( void HideCursor(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> imageAlphaClear: image color: color threshold: threshold [
    self ffiCall: #( void ImageAlphaClear(RaylibImage *image, RaylibColor color, float threshold) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageAlphaCrop: image threshold: threshold [
    self ffiCall: #( void ImageAlphaCrop(RaylibImage *image, float threshold) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageAlphaMask: image alphaMask: alphaMask [
    self ffiCall: #( void ImageAlphaMask(RaylibImage *image, RaylibImage alphaMask) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageAlphaPremultiply: image [
    self ffiCall: #( void ImageAlphaPremultiply(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageBlurGaussian: image blurSize: blurSize [
    self ffiCall: #( void ImageBlurGaussian(RaylibImage *image, int blurSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageClearBackground: dst color: color [
    self ffiCall: #( void ImageClearBackground(RaylibImage *dst, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorBrightness: image brightness: brightness [
    self ffiCall: #( void ImageColorBrightness(RaylibImage *image, int brightness) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorContrast: image contrast: contrast [
    self ffiCall: #( void ImageColorContrast(RaylibImage *image, float contrast) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorGrayscale: image [
    self ffiCall: #( void ImageColorGrayscale(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorInvert: image [
    self ffiCall: #( void ImageColorInvert(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorReplace: image color: color replace: replace [
    self ffiCall: #( void ImageColorReplace(RaylibImage *image, RaylibColor color, RaylibColor replace) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageColorTint: image color: color [
    self ffiCall: #( void ImageColorTint(RaylibImage *image, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageCopy: image [
    ^self ffiCall: #( RaylibImage ImageCopy(RaylibImage image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageCrop: image crop: crop [
    self ffiCall: #( void ImageCrop(RaylibImage *image, RaylibRectangle crop) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDither: image rBpp: rBpp gBpp: gBpp bBpp: bBpp aBpp: aBpp [
    self ffiCall: #( void ImageDither(RaylibImage *image, int rBpp, int gBpp, int bBpp, int aBpp) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDraw: dst src: src srcRec: srcRec dstRec: dstRec tint: tint [
    self ffiCall: #( void ImageDraw(RaylibImage *dst, RaylibImage src, RaylibRectangle srcRec, RaylibRectangle dstRec, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawCircle: dst centerX: centerX centerY: centerY radius: radius color: color [
    self ffiCall: #( void ImageDrawCircle(RaylibImage *dst, int centerX, int centerY, int radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawCircleLines: dst centerX: centerX centerY: centerY radius: radius color: color [
    self ffiCall: #( void ImageDrawCircleLines(RaylibImage *dst, int centerX, int centerY, int radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawCircleLinesV: dst center: center radius: radius color: color [
    self ffiCall: #( void ImageDrawCircleLinesV(RaylibImage *dst, RaylibVector2 center, int radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawCircleV: dst center: center radius: radius color: color [
    self ffiCall: #( void ImageDrawCircleV(RaylibImage *dst, RaylibVector2 center, int radius, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawLine: dst startPosX: startPosX startPosY: startPosY endPosX: endPosX endPosY: endPosY color: color [
    self ffiCall: #( void ImageDrawLine(RaylibImage *dst, int startPosX, int startPosY, int endPosX, int endPosY, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawLineV: dst start: start end: end color: color [
    self ffiCall: #( void ImageDrawLineV(RaylibImage *dst, RaylibVector2 start, RaylibVector2 end, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawPixel: dst posX: posX posY: posY color: color [
    self ffiCall: #( void ImageDrawPixel(RaylibImage *dst, int posX, int posY, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawPixelV: dst position: position color: color [
    self ffiCall: #( void ImageDrawPixelV(RaylibImage *dst, RaylibVector2 position, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawRectangle: dst posX: posX posY: posY width: width height: height color: color [
    self ffiCall: #( void ImageDrawRectangle(RaylibImage *dst, int posX, int posY, int width, int height, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawRectangleLines: dst rec: rec thick: thick color: color [
    self ffiCall: #( void ImageDrawRectangleLines(RaylibImage *dst, RaylibRectangle rec, int thick, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawRectangleRec: dst rec: rec color: color [
    self ffiCall: #( void ImageDrawRectangleRec(RaylibImage *dst, RaylibRectangle rec, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawRectangleV: dst position: position size: size color: color [
    self ffiCall: #( void ImageDrawRectangleV(RaylibImage *dst, RaylibVector2 position, RaylibVector2 size, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawText: dst text: text posX: posX posY: posY fontSize: fontSize color: color [
    self ffiCall: #( void ImageDrawText(RaylibImage *dst, const char *text, int posX, int posY, int fontSize, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageDrawTextEx: dst font: font text: text position: position fontSize: fontSize spacing: spacing tint: tint [
    self ffiCall: #( void ImageDrawTextEx(RaylibImage *dst, RaylibFont font, const char *text, RaylibVector2 position, float fontSize, float spacing, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageFlipHorizontal: image [
    self ffiCall: #( void ImageFlipHorizontal(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageFlipVertical: image [
    self ffiCall: #( void ImageFlipVertical(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageFormat: image newFormat: newFormat [
    self ffiCall: #( void ImageFormat(RaylibImage *image, int newFormat) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageFromImage: image rec: rec [
    ^self ffiCall: #( RaylibImage ImageFromImage(RaylibImage image, RaylibRectangle rec) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageMipmaps: image [
    self ffiCall: #( void ImageMipmaps(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageResize: image newWidth: newWidth newHeight: newHeight [
    self ffiCall: #( void ImageResize(RaylibImage *image, int newWidth, int newHeight) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageResizeCanvas: image newWidth: newWidth newHeight: newHeight offsetX: offsetX offsetY: offsetY fill: fill [
    self ffiCall: #( void ImageResizeCanvas(RaylibImage *image, int newWidth, int newHeight, int offsetX, int offsetY, RaylibColor fill) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageResizeNN: image newWidth: newWidth newHeight: newHeight [
    self ffiCall: #( void ImageResizeNN(RaylibImage *image, int newWidth, int newHeight) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageRotate: image degrees: degrees [
    self ffiCall: #( void ImageRotate(RaylibImage *image, int degrees) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageRotateCCW: image [
    self ffiCall: #( void ImageRotateCCW(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageRotateCW: image [
    self ffiCall: #( void ImageRotateCW(RaylibImage *image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageText: text fontSize: fontSize color: color [
    ^self ffiCall: #( RaylibImage ImageText(const char *text, int fontSize, RaylibColor color) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageTextEx: font text: text fontSize: fontSize spacing: spacing tint: tint [
    ^self ffiCall: #( RaylibImage ImageTextEx(RaylibFont font, const char *text, float fontSize, float spacing, RaylibColor tint) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> imageToPOT: image fill: fill [
    self ffiCall: #( void ImageToPOT(RaylibImage *image, RaylibColor fill) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> initAudioDevice [
    self ffiCall: #( void InitAudioDevice(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> initWindow: intWidth height: intHeight title: stringTitle [
	self ffiCall: #( void InitWindow(int intWidth, int intHeight, char* stringTitle)) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isAudioDeviceReady [
    ^self ffiCall: #( bool IsAudioDeviceReady(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isAudioStreamPlaying: stream [
    ^self ffiCall: #( bool IsAudioStreamPlaying(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isAudioStreamProcessed: stream [
    ^self ffiCall: #( bool IsAudioStreamProcessed(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isAudioStreamReady: stream [
    ^self ffiCall: #( bool IsAudioStreamReady(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isCursorHidden [ 
	self ffiCall: #( void IsCursorHidden(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isCursorOnScreen [ 
	self ffiCall: #( void IsCursorOnScreen(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isFileDropped [
    ^self ffiCall: #( bool IsFileDropped(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isFileExtension: fileName ext: ext [
    ^self ffiCall: #( bool IsFileExtension(const char *fileName, const char *ext) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isFontReady: font [
    ^self ffiCall: #( bool IsFontReady(RaylibFont font) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGamepadAvailable: gamepad [
    ^self ffiCall: #( bool IsGamepadAvailable(int gamepad) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGamepadButtonDown: gamepad button: button [
    ^self ffiCall: #( bool IsGamepadButtonDown(int gamepad, int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGamepadButtonPressed: gamepad button: button [
    ^self ffiCall: #( bool IsGamepadButtonPressed(int gamepad, int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGamepadButtonReleased: gamepad button: button [
    ^self ffiCall: #( bool IsGamepadButtonReleased(int gamepad, int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGamepadButtonUp: gamepad button: button [
    ^self ffiCall: #( bool IsGamepadButtonUp(int gamepad, int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isGestureDetected: gesture [
    ^self ffiCall: #( bool IsGestureDetected(uint32 gesture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isImageReady: image [
    ^self ffiCall: #( bool IsImageReady(RaylibImage image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isKeyDown: key [
    ^self ffiCall: #( bool IsKeyDown(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isKeyPressed: key [
    ^self ffiCall: #( bool IsKeyPressed(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isKeyPressedRepeat: key [
    ^self ffiCall: #( bool IsKeyPressedRepeat(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isKeyReleased: key [
    ^self ffiCall: #( bool IsKeyReleased(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isKeyUp: key [
    ^self ffiCall: #( bool IsKeyUp(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMaterialReady: material [
    ^self ffiCall: #( bool IsMaterialReady(RaylibMaterial material) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isModelAnimationValid: model anim: anim [
    ^self ffiCall: #( bool IsModelAnimationValid(RaylibModel model, RaylibModelAnimation anim) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isModelReady: model [
    ^self ffiCall: #( bool IsModelReady(RaylibModel model) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMouseButtonDown: button [
    ^self ffiCall: #( bool IsMouseButtonDown(int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMouseButtonPressed: button [
    ^self ffiCall: #( bool IsMouseButtonPressed(int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMouseButtonReleased: button [
    ^self ffiCall: #( bool IsMouseButtonReleased(int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMouseButtonUp: button [
    ^self ffiCall: #( bool IsMouseButtonUp(int button) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMusicReady: music [
    ^self ffiCall: #( bool IsMusicReady(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isMusicStreamPlaying: music [
    ^self ffiCall: #( bool IsMusicStreamPlaying(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isPathFile: path [
    ^self ffiCall: #( bool IsPathFile(const char *path) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isRenderTextureReady: target [
    ^self ffiCall: #( bool IsRenderTextureReady(RaylibRenderTexture2D target) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isShaderReady: raylibShader [
self ffiCall: #( bool IsShaderReady(RaylibShader raylibShader) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isSoundPlaying: sound [
    ^self ffiCall: #( bool IsSoundPlaying(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isSoundReady: sound [
    ^self ffiCall: #( bool IsSoundReady(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isTextureReady: texture [
    ^self ffiCall: #( bool IsTextureReady(RaylibTexture2D texture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isWaveReady: wave [
    ^self ffiCall: #( bool IsWaveReady(RaylibWave wave) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> isWindowFocused [
	self ffiCall: #( bool IsWindowFocused(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowFullscreen [
	self ffiCall: #( bool IsWindowFullscreen(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowHidden [
	self ffiCall: #( bool IsWindowHidden(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowMaximized [
	self ffiCall: #( bool IsWindowMaximized(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowMinimized [
	self ffiCall: #( bool IsWindowMinimized(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowReady [
	self ffiCall: #( bool IsWindowReady(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowResized [
	self ffiCall: #( bool IsWindowResized(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> isWindowState: intFlag [
	self ffiCall: #( bool IsWindowState(unsigned int intFlag) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> loadAudioStream: sampleRate sampleSize: sampleSize channels: channels [
    ^self ffiCall: #( RaylibAudioStream LoadAudioStream(uint32 sampleRate, uint32 sampleSize, uint32 channels) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadAutomationEventList: fileName [
    ^self ffiCall: #( RaylibAutomationEventList LoadAutomationEventList(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadCodepoints: text count: count [
    ^self ffiCall: #( int* LoadCodepoints(const char *text, int *count) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadDirectoryFiles: dirPath [
    ^self ffiCall: #( RaylibFilePathList LoadDirectoryFiles(const char *dirPath) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadDirectoryFilesEx: basePath filter: filter scanSubdirs: scanSubdirs [
    ^self ffiCall: #( RaylibFilePathList LoadDirectoryFilesEx(const char *basePath, const char *filter, bool scanSubdirs) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadDroppedFiles [
    ^self ffiCall: #( RaylibFilePathList LoadDroppedFiles(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFileData: fileName dataSize: dataSize [
    ^self ffiCall: #( unsigned char* LoadFileData(const char *fileName, int *dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFileText: fileName [
    ^self ffiCall: #( char* LoadFileText(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFont: fileName [
    ^self ffiCall: #( RaylibFont LoadFont(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFontData: fileData dataSize: dataSize fontSize: fontSize codepoints: codepoints codepointCount: codepointCount type: type [
    ^self ffiCall: #( RaylibGlyphInfo* LoadFontData(const uchar *fileData, int dataSize, int fontSize, int *codepoints, int codepointCount, int type) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFontEx: fileName fontSize: fontSize codepoints: codepoints codepointCount: codepointCount [
    ^self ffiCall: #( RaylibFont LoadFontEx(const char *fileName, int fontSize, int *codepoints, int codepointCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFontFromImage: image key: key firstChar: firstChar [
    ^self ffiCall: #( RaylibFont LoadFontFromImage(RaylibImage image, RaylibColor key, int firstChar) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadFontFromMemory: fileType fileData: fileData dataSize: dataSize fontSize: fontSize codepoints: codepoints codepointCount: codepointCount [
    ^self ffiCall: #( RaylibFont LoadFontFromMemory(const char *fileType, const uchar *fileData, int dataSize, int fontSize, int *codepoints, int codepointCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImage: fileName [
    ^self ffiCall: #( RaylibImage LoadImage(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageAnim: fileName frames: frames [
    ^self ffiCall: #( RaylibImage LoadImageAnim(const char *fileName, int *frames) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageColors: image [
    ^self ffiCall: #( RaylibColor* LoadImageColors(RaylibImage image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageFromMemory: fileType fileData: fileData dataSize: dataSize [
    ^self ffiCall: #( RaylibImage LoadImageFromMemory(const char *fileType, const uchar *fileData, int dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageFromScreen [
    ^self ffiCall: #( RaylibImage LoadImageFromScreen(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageFromTexture: texture [
    ^self ffiCall: #( RaylibImage LoadImageFromTexture(RaylibTexture2D texture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImagePalette: image maxPaletteSize: maxPaletteSize colorCount: colorCount [
    ^self ffiCall: #( RaylibColor* LoadImagePalette(RaylibImage image, int maxPaletteSize, int *colorCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageRaw: fileName width: width height: height format: format headerSize: headerSize [
    ^self ffiCall: #( RaylibImage LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadImageSvg: fileNameOrString width: width height: height [
    ^self ffiCall: #( RaylibImage LoadImageSvg(const char *fileNameOrString, int width, int height) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadMaterialDefault [
    ^self ffiCall: #( RaylibMaterial LoadMaterialDefault(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadMaterials: fileName materialCount: materialCount [
    ^self ffiCall: #( RaylibMaterial* LoadMaterials(const char *fileName, int *materialCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadModel: fileName [
    ^self ffiCall: #( RaylibModel LoadModel(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadModelAnimations: fileName animCount: animCount [
    ^self ffiCall: #( RaylibModelAnimation* LoadModelAnimations(const char *fileName, int *animCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadModelFromMesh: mesh [
    ^self ffiCall: #( RaylibModel LoadModelFromMesh(RaylibMesh mesh) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadMusicStream: fileName [
    ^self ffiCall: #( RaylibMusic LoadMusicStream(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadMusicStreamFromMemory: fileType data: data dataSize: dataSize [
    ^self ffiCall: #( RaylibMusic LoadMusicStreamFromMemory(const char *fileType, const uchar *data, int dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadRandomSequence: intCount min: intMin max: intMax [
	self ffiCall: #( int *LoadRandomSequence(uint32 intCount, int intMin, int intMax) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> loadRenderTexture: width height: height [
    ^self ffiCall: #( RaylibRenderTexture2D LoadRenderTexture(int width, int height) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadShader: stringVsFileName fsFileName: stringFsFileName [ 
	self ffiCall: #( Shader LoadShader(const char *stringVsFileName, const char *stringFsFileName) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> loadShaderFromMemory: stringVsCode fsFileName: stringFsCode [ 
	self ffiCall: #( Shader LoadShaderFromMemory(const char *stringVsCode, const char *stringFsCode) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> loadSound: fileName [
    ^self ffiCall: #( RaylibSound LoadSound(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadSoundAlias: source [
    ^self ffiCall: #( RaylibSound LoadSoundAlias(RaylibSound source) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadSoundFromWave: wave [
    ^self ffiCall: #( RaylibSound LoadSoundFromWave(RaylibWave wave) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadTexture: fileName [
    ^self ffiCall: #( RaylibTexture LoadTexture(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadTextureCubemap: image layout: layout [
    ^self ffiCall: #( RaylibTextureCubemap LoadTextureCubemap(RaylibImage image, int layout) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadTextureFromImage: image [
    ^self ffiCall: #( RaylibTexture2D LoadTextureFromImage(RaylibImage image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadUTF8: codepoints length: length [
    ^self ffiCall: #( char* LoadUTF8(const int *codepoints, int length) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadVrStereoConfig: raylibVrDeviceInfo [ 
	self ffiCall: #( VrStereoConfig LoadVrStereoConfig(RaylibVrDeviceInfo raylibVrDeviceInfo) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> loadWave: fileName [
    ^self ffiCall: #( RaylibWave LoadWave(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadWaveFromMemory: fileType fileData: fileData dataSize: dataSize [
    ^self ffiCall: #( RaylibWave LoadWaveFromMemory(const char *fileType, const uchar *fileData, int dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> loadWaveSamples: wave [
    ^self ffiCall: #( float* LoadWaveSamples(RaylibWave wave) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> maximizeWindow [
	self ffiCall: #( bool MaximizeWindow(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> measureText: text fontSize: fontSize [
    ^self ffiCall: #( int MeasureText(const char *text, int fontSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> measureTextEx: font text: text fontSize: fontSize spacing: spacing [
    ^self ffiCall: #( RaylibVector2 MeasureTextEx(RaylibFont font, const char *text, float fontSize, float spacing) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> memAlloc: size [
    ^self ffiCall: #( void* MemAlloc(uint32 size) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> memFree: ptr [
    self ffiCall: #( void MemFree(void *ptr) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> memRealloc: ptr size: size [
    ^self ffiCall: #( void* MemRealloc(void *ptr, uint32 size) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> minimizeWindow [
	self ffiCall: #( bool MinimizeWindow(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> openURL: url [
    self ffiCall: #( void OpenURL(const char *url) ) library: RaylibLibrary.



]

{ #category : 'rcore' }
RaylibFFI >> pauseAudioStream: stream [
    self ffiCall: #( void PauseAudioStream(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> pauseMusicStream: music [
    self ffiCall: #( void PauseMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> pauseSound: sound [
    self ffiCall: #( void PauseSound(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> playAudioStream: stream [
    self ffiCall: #( void PlayAudioStream(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> playAutomationEvent: event [
    self ffiCall: #( void PlayAutomationEvent(RaylibAutomationEvent event) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> playMusicStream: music [
    self ffiCall: #( void PlayMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> playSound: sound [
    self ffiCall: #( void PlaySound(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> pollInputEvents [
self ffiCall: #( void PollInputEvents(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> raylibVrStereoConfig: raylibVrStereoConfig [ 
	self ffiCall: #( void UnloadVrStereoConfig(RaylibVrStereoConfig raylibVrStereoConfig) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> restoreWindow [
	self ffiCall: #( bool RestoreWindow(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> resumeAudioStream: stream [
    self ffiCall: #( void ResumeAudioStream(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> resumeMusicStream: music [
    self ffiCall: #( void ResumeMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> resumeSound: sound [
    self ffiCall: #( void ResumeSound(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> saveFileData: fileName data: data dataSize: dataSize [
    ^self ffiCall: #( bool SaveFileData(const char *fileName, void *data, int dataSize) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> saveFileText: fileName text: text [
    ^self ffiCall: #( bool SaveFileText(const char *fileName, char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> seekMusicStream: music position: position [
    self ffiCall: #( void SeekMusicStream(RaylibMusic music, float position) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAudioStreamBufferSizeDefault: size [
    self ffiCall: #( void SetAudioStreamBufferSizeDefault(int size) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAudioStreamCallback: stream callback: callback [
    self ffiCall: #( void SetAudioStreamCallback(RaylibAudioStream stream, RaylibAudioCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAudioStreamPan: stream pan: pan [
    self ffiCall: #( void SetAudioStreamPan(RaylibAudioStream stream, float pan) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAudioStreamPitch: stream pitch: pitch [
    self ffiCall: #( void SetAudioStreamPitch(RaylibAudioStream stream, float pitch) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAudioStreamVolume: stream volume: volume [
    self ffiCall: #( void SetAudioStreamVolume(RaylibAudioStream stream, float volume) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAutomationEventBaseFrame: frame [
    self ffiCall: #( void SetAutomationEventBaseFrame(int frame) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setAutomationEventList: list [
    self ffiCall: #( void SetAutomationEventList(RaylibAutomationEventList *list) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setClipboardText: stringText [ 
	self ffiCall: #( void SetClipboardText(const char *stringText) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setConfigFlags: flags [
    self ffiCall: #( void SetConfigFlags(uint32 flags) ) library: RaylibLibrary.


]

{ #category : 'rcore' }
RaylibFFI >> setExitKey: key [
    self ffiCall: #( void SetExitKey(int key) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setGamepadMappings: mappings [
    ^self ffiCall: #( int SetGamepadMappings(const char *mappings) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setGesturesEnabled: flags [
    self ffiCall: #( void SetGesturesEnabled(uint32 flags) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setLoadFileDataCallback: callback [
    self ffiCall: #( void SetLoadFileDataCallback(LoadFileDataCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setLoadFileTextCallback: callback [
    self ffiCall: #( void SetLoadFileTextCallback(LoadFileTextCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setMasterVolume: volume [
    self ffiCall: #( void SetMasterVolume(float volume) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setMaterialTexture: material mapType: mapType texture: texture [
    self ffiCall: #( void SetMaterialTexture(RaylibMaterial *material, int mapType, RaylibTexture2D texture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setModelMeshMaterial: model meshId: meshId materialId: materialId [
    self ffiCall: #( void SetModelMeshMaterial(RaylibModel *model, int meshId, int materialId) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setMusicPan: music pan: pan [
    self ffiCall: #( void SetMusicPan(RaylibMusic music, float pan) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setMusicPitch: music pitch: pitch [
    self ffiCall: #( void SetMusicPitch(RaylibMusic music, float pitch) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setMusicVolume: music volume: volume [
    self ffiCall: #( void SetMusicVolume(RaylibMusic music, float volume) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setPixelColor: dstPtr color: color format: format [
    self ffiCall: #( void SetPixelColor(void *dstPtr, RaylibColor color, int format) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setRandomSeed: intSeed [
	self ffiCall: #( void SetRandomSeed(uint32 intSeed) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setSaveFileDataCallback: callback [
    self ffiCall: #( void SetSaveFileDataCallback(SaveFileDataCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setSaveFileTextCallback: callback [
    self ffiCall: #( void SetSaveFileTextCallback(SaveFileTextCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setShaderValue: raylibShader locIndex: locIndex value: pointerToValue uniformType: uniformType [
self ffiCall: #( SetShaderValue(RaylibShader raylibShader, int locIndex, const void *pointerToValue, int uniformType ) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setShaderValueMatrix: shader locIndex: locIndex matrix: mat [
self ffiCall: #( void SetShaderValueMatrix(RaylibShader shader, int locIndex, RaylibMatrix mat) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setShaderValueTexture: shader locIndex: locIndex texture: texture [
self ffiCall: #( void SetShaderValueTexture(RaylibShader shader, int locIndex, RaylibTexture texture) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setShaderValueV: raylibShader locIndex: locIndex value: pointerToValue uniformType: uniformType count: count [
self ffiCall: #( void SetShaderValueV(RaylibShader raylibShader, int locIndex, const void *pointerToValue, int uniformType, int count) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setShapesTexture: texture source: source [
    self ffiCall: #( void SetShapesTexture(RaylibTexture2D texture, RaylibRectangle source) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setSoundPan: sound pan: pan [
    self ffiCall: #( void SetSoundPan(RaylibSound sound, float pan) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setSoundPitch: sound pitch: pitch [
    self ffiCall: #( void SetSoundPitch(RaylibSound sound, float pitch) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setSoundVolume: sound volume: volume [
    self ffiCall: #( void SetSoundVolume(RaylibSound sound, float volume) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setTargetFPS: intFps [
self ffiCall: #( void SetTargetFPS(int intFps) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setTextLineSpacing: spacing [
    self ffiCall: #( void SetTextLineSpacing(int spacing) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setTextureFilter: texture filter: filter [
    self ffiCall: #( void SetTextureFilter(RaylibTexture2D texture, int filter) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setTextureWrap: texture wrap: wrap [
    self ffiCall: #( void SetTextureWrap(RaylibTexture2D texture, int wrap) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setTraceLogCallback: callback [
    self ffiCall: #( void SetTraceLogCallback(TraceLogCallback callback) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setTraceLogLevel: logLevel [
    self ffiCall: #( void SetTraceLogLevel(int logLevel) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> setWindowFocused [
	self ffiCall: #( void SetWindowFocused(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowIcon: raylibImage [
	self ffiCall: #( void SetWindowIcon(RaylibImage raylibImage) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowIcons: raylibImageArrayPointer count: intCount [
	self ffiCall: #( void SetWindowIcons(RaylibImage *raylibImageArrayPointer, int intCount)  ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowMaxSize: intWidth height: intHeight [
	self ffiCall: #( void SetWindowMaxSize(int intWidth, int intHeight) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowMinSize: intWidth height: intHeight [
	self ffiCall: #( void SetWindowMinSize(int intWidth, int intHeight) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowMonitor: intMonitor [
	self ffiCall: #( void SetWindowMonitor(int intMonitor) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowOpacity: floatOpacity [
	self ffiCall: #( void SetWindowOpacity(float floatOpacity) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowPosition: intX y: intY [
	self ffiCall: #( void SetWindowPosition(int intX, int intY)  ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowSize: intWidth height: intHeight [
	self ffiCall: #( void SetWindowSize(int intWidth, int intHeight) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowState: intFlags [
	self ffiCall: #( bool SetWindowState(uint32 intFlags) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> setWindowTitle: stringWindowTitle [
	self ffiCall: #( void SetWindowTitle(const char *stringWindowTitle)   ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> showCursor [ 
	self ffiCall: #( void ShowCursor(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> startAutomationEventRecording [
    self ffiCall: #( void StartAutomationEventRecording(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> stopAudioStream: stream [
    self ffiCall: #( void StopAudioStream(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> stopAutomationEventRecording [
    self ffiCall: #( void StopAutomationEventRecording(void) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> stopMusicStream: music [
    self ffiCall: #( void StopMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> stopSound: sound [
    self ffiCall: #( void StopSound(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> swapScreenBuffer [
self ffiCall: #( void SwapScreenBuffer(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> takeScreenshot: fileName [
    self ffiCall: #( void TakeScreenshot(const char *fileName) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textAppend: text append: append position: position [
    self ffiCall: #( void TextAppend(char *text, const char *append, int *position) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textCopy: dst src: src [
    ^self ffiCall: #( int TextCopy(char *dst, const char *src) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textFindIndex: text find: find [
    ^self ffiCall: #( int TextFindIndex(const char *text, const char *find) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textFormat: text [
    ^self ffiCall: #( const char* TextFormat(const char *text, ...) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textInsert: text insert: insert position: position [
    ^self ffiCall: #( char* TextInsert(const char *text, const char *insert, int position) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textIsEqual: text1 text2: text2 [
    ^self ffiCall: #( bool TextIsEqual(const char *text1, const char *text2) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textJoin: textList count: count delimiter: delimiter [
    ^self ffiCall: #( const char* TextJoin(const char **textList, int count, const char *delimiter) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textLength: text [
    ^self ffiCall: #( uint32 TextLength(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textReplace: text replace: replace by: by [
    ^self ffiCall: #( char* TextReplace(char *text, const char *replace, const char *by) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textSplit: text delimiter: delimiter count: count [
    ^self ffiCall: #( const char** TextSplit(const char *text, char delimiter, int *count) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textSubtext: text position: position length: length [
    ^self ffiCall: #( const char* TextSubtext(const char *text, int position, int length) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textToInteger: text [
    ^self ffiCall: #( int TextToInteger(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textToLower: text [
    ^self ffiCall: #( const char* TextToLower(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textToPascal: text [
    ^self ffiCall: #( const char* TextToPascal(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> textToUpper: text [
    ^self ffiCall: #( const char* TextToUpper(const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> toggleBorderlessWindowed [
	self ffiCall: #( void ToggleBorderlessWindowed(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> toggleFullscreen [
	self ffiCall: #( void ToggleFullscreen(void) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> traceLog: logLevel text: text [
    self ffiCall: #( void TraceLog(int logLevel, const char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadAudioStream: stream [
    self ffiCall: #( void UnloadAudioStream(RaylibAudioStream stream) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadAutomationEventList: list [
    self ffiCall: #( void UnloadAutomationEventList(RaylibAutomationEventList *list) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadCodepoints: codepoints [
    self ffiCall: #( void UnloadCodepoints(int *codepoints) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadDirectoryFiles: files [
    self ffiCall: #( void UnloadDirectoryFiles(RaylibFilePathList files) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadDroppedFiles: files [
    self ffiCall: #( void UnloadDroppedFiles(RaylibFilePathList files) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadFileData: data [
    self ffiCall: #( void UnloadFileData(uchar *data) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadFileText: text [
    self ffiCall: #( void UnloadFileText(char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadFont: font [
    self ffiCall: #( void UnloadFont(RaylibFont font) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadFontData: glyphs glyphCount: glyphCount [
    self ffiCall: #( void UnloadFontData(RaylibGlyphInfo *glyphs, int glyphCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadImage: image [
    self ffiCall: #( void UnloadImage(RaylibImage image) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadImageColors: colors [
    self ffiCall: #( void UnloadImageColors(RaylibColor *colors) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadImagePalette: colors [
    self ffiCall: #( void UnloadImagePalette(RaylibColor *colors) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadMaterial: material [
    self ffiCall: #( void UnloadMaterial(RaylibMaterial material) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadMesh: mesh [
    self ffiCall: #( void UnloadMesh(RaylibMesh mesh) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadModel: model [
    self ffiCall: #( void UnloadModel(RaylibModel model) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadModelAnimation: anim [
    self ffiCall: #( void UnloadModelAnimation(RaylibModelAnimation anim) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadModelAnimations: animations animCount: animCount [
    self ffiCall: #( void UnloadModelAnimations(RaylibModelAnimation *animations, int animCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadMusicStream: music [
    self ffiCall: #( void UnloadMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadRandomSequence: intPointerToSequence [
	self ffiCall: #( void UnloadRandomSequence(int *intPointerToSequence) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> unloadRenderTexture: target [
    self ffiCall: #( void UnloadRenderTexture(RaylibRenderTexture2D target) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadShader: shader [
self ffiCall: #( void UnloadShader(RaylibShader shader) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> unloadSound: sound [
    self ffiCall: #( void UnloadSound(RaylibSound sound) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadSoundAlias: alias [
    self ffiCall: #( void UnloadSoundAlias(RaylibSound alias) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadTexture: texture [
    self ffiCall: #( void UnloadTexture(RaylibTexture2D texture) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadUTF8: text [
    self ffiCall: #( void UnloadUTF8(char *text) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadWave: wave [
    self ffiCall: #( void UnloadWave(RaylibWave wave) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> unloadWaveSamples: samples [
    self ffiCall: #( void UnloadWaveSamples(float *samples) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateAudioStream: stream data: data frameCount: frameCount [
    self ffiCall: #( void UpdateAudioStream(RaylibAudioStream stream, const void *data, int frameCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateCamera: camera mode: mode [
    self ffiCall: #( void UpdateCamera(RaylibCamera *camera, int mode) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateCameraPro: camera movement: movement rotation: rotation zoom: zoom [
    self ffiCall: #( void UpdateCameraPro(RaylibCamera *camera, RaylibVector3 movement, RaylibVector3 rotation, float zoom) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateMeshBuffer: mesh index: index data: data dataSize: dataSize offset: offset [
    self ffiCall: #( void UpdateMeshBuffer(RaylibMesh mesh, int index, const void *data, int dataSize, int offset) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateModelAnimation: model anim: anim frame: frame [
    self ffiCall: #( void UpdateModelAnimation(RaylibModel model, RaylibModelAnimation anim, int frame) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateMusicStream: music [
    self ffiCall: #( void UpdateMusicStream(RaylibMusic music) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateSound: sound data: data sampleCount: sampleCount [
    self ffiCall: #( void UpdateSound(RaylibSound sound, const void *data, int sampleCount) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateTexture: texture pixels: pixels [
    self ffiCall: #( void UpdateTexture(RaylibTexture2D texture, const void *pixels) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> updateTextureRec: texture rec: rec pixels: pixels [
    self ffiCall: #( void UpdateTextureRec(RaylibTexture2D texture, RaylibRectangle rec, const void *pixels) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> uploadMesh: mesh dynamic: dynamic [
    self ffiCall: #( void UploadMesh(RaylibMesh *mesh, bool dynamic) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> waitTime: doubleSeconds [
self ffiCall: #( void WaitTime(double doubleSeconds) ) library: RaylibLibrary.
]

{ #category : 'rcore' }
RaylibFFI >> waveCopy: wave [
    ^self ffiCall: #( RaylibWave WaveCopy(RaylibWave wave) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> waveCrop: wave initSample: initSample finalSample: finalSample [
    self ffiCall: #( void WaveCrop(RaylibWave *wave, int initSample, int finalSample) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> waveFormat: wave sampleRate: sampleRate sampleSize: sampleSize channels: channels [
    self ffiCall: #( void WaveFormat(RaylibWave *wave, int sampleRate, int sampleSize, int channels) ) library: RaylibLibrary.

]

{ #category : 'rcore' }
RaylibFFI >> windowShouldClose [
	self ffiCall: #( bool WindowShouldClose(void) ) library: RaylibLibrary.
]
