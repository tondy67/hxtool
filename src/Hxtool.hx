package;

import abv.AM;
import abv.io.SH;

using abv.CR;
using abv.sys.ST;
using abv.lib.TP;

/**
 * Hxtool mimics Bash Shell
 **/
class Hxtool{

	var args:Array<String> = AM.args();
	
	public function new()
	{
		CR.print("start",DEBUG); 
	}// new()

	public function parse()
	{
		if(args[0].good()){
			var path = args[0]; 
//			if(args[1].good())path = args[1] + path;  trace(args);
			var script = path.open(); 
			var lines = script.splitt("\n");
			var tmp = new Array<String>();
			for(l in lines){
				if(l.substr(0,1) != "#")tmp.push(l);
			}
			script = tmp.join("\n");  
			if(script.good("err: no script")){ 
				SH.args = args;
				try SH.execute(script) catch(m:Dynamic){trace(m);}
			}
		}	
	}// parse()

	function parseArgs()
	{
	}// parseArgs()

}// hxtool.Hxtool

