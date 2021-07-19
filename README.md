# pharoRaylib
Pharo Smalltalk bindings for Raylib game library

Warning: Early work in progress, some examples are implemented but much more
work needs to be done!

How to use:
todo: get code using iceberg

Windows 10: 
	Use 64 bit pharo vm (tested with pharo 9)

download raylib-3.7.0_win64_mingw-w64.zip from raylib
 3.7 release and put raylib.dll in vm folder.  Put resources folder in vm 
 folder as well if you want to have the resources used in examples.

Running examples:

ExampleBunnyMark new run

(every subclass of RaylibDemo can be ran this way)

Notes:  Much of Raylib is not yet implemented, if anyone wants to help please 
do!  You can message me on discord (Zenchess#3779) if you want to coordinate or
just send a pull request.  

What is implemented:  Everything that runs the provided examples.
What's not implemented:  Many of the raylib methods, some of the externalStructure
classes are improperly implemented and will not work.  See RaylibModel >>
materialsCollection to see an example of how to implement the ffi arrays, 
this will probably need to be done for other classes.