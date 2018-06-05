[https://gitlab.com/tondy67](https://gitlab.com/tondy67)

hxtool
=======

hxtool mimics bash shell (Windows, Linux, OSX)

**under development!**

Installation
============
Install the latest version of [Haxe](http://www.haxe.org/download) and [hscript](http://lib.haxe.org/p/hscript/)

	$ mkdir test
	$ cd test
    $ git clone https://github.com/tondy67/abv.git
    $ git clone https://github.com/tondy67/hxtool.git
    $ haxelib install hscript
    
    $ cd hxtool
    $ haxe neko.hxml # or cpp.hxml

if you want to install hxtool...

on linux:
	
	$ sudo cp bin/neko/hxtool /bin/  # or bin/cpp/Hxtool /bin/
	
on windows:

	# cp bin/neko/hxtool c:\HaxeToolkit\haxe\
	
and then you can use it everywhere...
	
	$ hxtool your-script.hxs
	
or if you want to make *.hxs scripts executables

on linux:
	
the 1st line of your-script.hxs must be "#!/bin/hxtool" and ...

	$ chmod 755 your-script.hxs
	$ ./your-script.hxs 
	
on windows:

download & run [filetypesman](http://www.nirsoft.net/utils/file_types_manager.html)

search for ".hxs" extension, highlight it and with right mouse click select "Edit selected action"
and in "command-line" field put "C:\HaxeToolkit\haxe\hxtool.exe" "%1" "%2" "%3"  "%4"


	# your-script.hxs 

Examples
========

[make.hxs](https://github.com/tondy67/Snake/blob/master/make.hxs)
	
Commands
========

All exported commands, variables and classes are in
[SH.execute()](https://github.com/tondy67/abv/blob/master/abv/io/SH.hx)
    
