# pharoRaylib
Pharo Smalltalk bindings for Raylib game library

# Update: 
Everything is almost working, however some calls to RaylibTexture2D need to be renamed to RaylibTexture.   


# Constants
  Add SharedPool #RaylibConstants to your game class to use constants like MOUSE_BUTTON_MIDDLE, etc. 
  The raylib colors specified in the Raylib cheat sheet are also implemented (all constants defined in raylib.h are).

# Installation

# Windows
	Download raylib release binaries, you should have a raylib.dll.  It needs to be version 5.0 of raylib
 and it should be the MSVC 64 bit build.  Put the raylib.dll in your image directory or somewhere where pharo 
 can find it.  

 # Linux
 	Install raylib from your favorite package manager.  Check RaylibLibrary class >> unixLibraryName
  which is ^'libraylib.so'.  This should be installed after installing raylib on linux, if not, just make sure
  this is available on your path or available to pharo.  Make sure you install 64 bit.  
  
  Clone the repo with iceberg or 'browse git repositories' in Pharo and load the code.  

# BunnyMark
	To run BunnyMarkDemo, copy 'resources' to your pharo folder: for instance: ./resources
	Go to class side and there are methods such as startDemoWindowed and startDemoFullscreen.  


  # Todo:
   Implement examples and demo projects to demonstrate usage of the library.  This will be done soon, probably today. 
   Write custom wrapper methods to give it a more smalltalk feel, this is a more long term project.  For now, you need
   to call the dll methods directly. 

   # Benchmarks: 
    BunnyMark startDemoWindowed
   	Dolphin Smalltalk @ 20,000 bunnies: 80 fps.  
	Pharo 12 @ 20,000 bunnies: 150 fps.  It also creates the bunnies faster with the same smalltalk code.
