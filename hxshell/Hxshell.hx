package hxshell;

import sys.io.*;
import abv.io.SH;

using StringTools;
using abv.lib.Tools;

/**
 * Hxshell mimics Bash Shell
 **/
class Hxshell{

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
	
}// hxshell.Hxshell

