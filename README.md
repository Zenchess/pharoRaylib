# pharoRaylib
Pharo Smalltalk bindings for Raylib game library

# Update: 
Everything should theoretically work.  

Currently working on implementing some examples.  But basically you should be able 
to create a new instance of FFIRaylib and send it Raylib method calls.  Follow
a tutorial or example from the main page and just call the same methods in the same
order. 

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

  # Todo:
   Implement examples and demo projects to demonstrate usage of the library.  This will be done soon, probably today. 
   Write custom wrapper methods to give it a more smalltalk feel, this is a more long term project.  For now, you need
   to call the dll methods directly. 

   # Benchmarks: 
   	Stay tuned later today for comparisons between DolphinRaylib and PharoRaylib using the BunnyMark demo, which spawns
    thousands of bunny sprites that move around the screen.  On dolphin, I get something like 100 fps after 20,000 bunnies.
