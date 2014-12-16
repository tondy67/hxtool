package hxtool;

import sys.io.*;
import abv.AM;
import abv.io.SH;

using abv.CT;

/**
 * Hxtool mimics Bash Shell
 **/
class Hxtool{

	var args:Array<String> = AM.args();
	
	public function new()
	{
		"".log();
	}// new()

	public function parse()
	{
		if(args[0].good()){
			var path = args[0];
			if(args[1].good())path = args[1] + path; trace(path);
			var script = getScript(path);
			if(script.good("err: no script"))SH.execute(script);	
		}	
	}// parse()

	function parseArgs()
	{
	}// parseArgs()

	function getScript(path:String)
	{
		var r = "";
		
		if(!path.dir('getScript: $path'))r = SH.cat(path);

		return r;
	}// getScript()
	
}// hxtool.Hxtool

