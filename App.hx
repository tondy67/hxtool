package;

import sys.io.*;
import abv.Tools;
import abv.io.SH;

using StringTools;
using abv.Tools;

/**
 * hxshell
 **/
class App{

	var args:Array<String>;
	
	public function new()
	{
		Tools.log();

		args = Sys.args(); //trace(args);
trace(Sys.executablePath());
var script = parseHxs("data/script.hxs");

//		SH.ds = json;
		SH.execute(script);		

	}// new()

	function parseArgs()
	{
	}// parseArgs()

	function parseHxs(path:String)
	{
		var r = "";
		
		if(!path.dir('parseHxs: $path'))r = SH.cat(path);

		return r;
	}// parseHxs()
	
	public static function main() 
	{
 		var a = new App();
 		for(m in Tools.getLog())Sys.println(m);
	}// main()


}// App

