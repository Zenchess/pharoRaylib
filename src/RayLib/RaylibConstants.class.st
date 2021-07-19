Class {
	#name : #RaylibConstants,
	#superclass : #SharedPool,
	#classVars : [
		'BEIGE',
		'BLACK',
		'BLANK',
		'BLUE',
		'BROWN',
		'DARKBLUE',
		'DARKBROWN',
		'DARKGRAY',
		'DARKGREEN',
		'DARKPURPLE',
		'GOLD',
		'GRAY',
		'GREEN',
		'KEY_A',
		'KEY_BACKSPACE',
		'KEY_DELETE',
		'KEY_ENTER',
		'KEY_ESCAPE',
		'KEY_INSERT',
		'KEY_LEFT',
		'KEY_R',
		'KEY_RIGHT',
		'KEY_S',
		'KEY_SPACE',
		'KEY_TAB',
		'LIGHTGRAY',
		'LIME',
		'MAGENTA',
		'MAROON',
		'MOUSE_BUTTON_BACK',
		'MOUSE_BUTTON_EXTRA',
		'MOUSE_BUTTON_FORWARD',
		'MOUSE_BUTTON_LEFT',
		'MOUSE_BUTTON_MIDDLE',
		'MOUSE_BUTTON_RIGHT',
		'MOUSE_BUTTON_SIDE',
		'MOUSE_LEFT_BUTTON',
		'MOUSE_MIDDLE_BUTTON',
		'MOUSE_RIGHT_BUTTON',
		'ORANGE',
		'PINK',
		'PURPLE',
		'RAYWHITE',
		'RED',
		'SKYBLUE',
		'VIOLET',
		'WHITE',
		'YELLOW'
	],
	#category : #RayLib
}

{ #category : #'class initialization' }
RaylibConstants class >> initialize [
	 MOUSE_BUTTON_LEFT    := 0.       
    MOUSE_BUTTON_RIGHT   := 1.       
    MOUSE_BUTTON_MIDDLE  := 2.       
    MOUSE_BUTTON_SIDE    := 3.       
    MOUSE_BUTTON_EXTRA   := 4.       
    MOUSE_BUTTON_FORWARD := 5.       
    MOUSE_BUTTON_BACK    := 6.  

	 KEY_SPACE           := 32 .    
    KEY_ESCAPE          := 25     .
    KEY_ENTER           := 257  .  
    KEY_TAB             := 258    . 
    KEY_BACKSPACE       := 259    . 
    KEY_INSERT          := 260     .
    KEY_DELETE          := 261    . 
    KEY_RIGHT           := 262     . 
	KEY_LEFT := 263.
	
	
	KEY_A               := 65.
	KEY_S 			  := 83.
	KEY_R 			  := 82.

	"colors"
	WHITE := RaylibColor new r: 255; g: 255; b: 255; a: 255; yourself.
	MAROON := RaylibColor new r: 190; g: 33; b: 55; a: 255; yourself.
	RAYWHITE :=  RaylibColor new r: 245; g: 245; b: 245; a: 255; yourself.
	LIGHTGRAY := RaylibColor new r: 200; g: 200; b: 200; a: 255; yourself.
	GRAY := RaylibColor new r: 130; g: 130; b: 130; a: 255; yourself.
	DARKGRAY := RaylibColor new r: 80; g: 80; b: 80; a: 255; yourself.
	YELLOW := RaylibColor new r: 253; g: 249; b: 0; a: 255; yourself.
	GOLD := RaylibColor new r: 255; g: 203; b: 0; a: 255; yourself.
	RED := RaylibColor new r: 230; g: 41; b: 55; a: 255; yourself.
	GREEN := RaylibColor new r: 0; g: 228; b: 48; a: 255; yourself.
	LIME := RaylibColor new r: 0; g: 158; b: 47; a: 255; yourself.
	DARKGREEN := RaylibColor new r: 0; g: 117; b: 44; a: 255; yourself.
	SKYBLUE := RaylibColor new r: 102; g: 191; b: 255; a: 255; yourself.
	BLUE := RaylibColor new r: 0; g: 121; b: 241; a: 255; yourself.
	DARKBLUE := RaylibColor new r: 0; g: 82; b: 172; a: 255; yourself.
	PURPLE := RaylibColor new r: 200; g: 122; b: 255; a: 255; yourself.
	VIOLET := RaylibColor new r: 135; g: 60; b: 190; a: 255; yourself.
	DARKPURPLE := RaylibColor new r: 112; g: 31; b: 126; a: 255; yourself.
	BEIGE := RaylibColor new r: 211; g: 176; b: 131; a: 255; yourself.
	BROWN := RaylibColor new r: 127; g: 106; b: 79; a: 255; yourself.
	DARKBROWN := RaylibColor new r: 76; g: 63; b: 47; a: 255; yourself.
	MAGENTA := RaylibColor new r: 255; g: 0; b: 255; a: 255; yourself.
	ORANGE := RaylibColor new r: 255; g: 161; b: 0; a: 255; yourself.
	BLACK := RaylibColor new r: 0; g: 0; b: 0; a: 255; yourself.
]
