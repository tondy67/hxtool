package;
/**
 * Hxtool mimics Bash Shell
 **/
import abv.AM;
import abv.io.SH;

using abv.lib.TP;
using abv.lib.CC;
using abv.sys.ST;

class Hxtool extends AM{

	public function new()
	{
		AM.verbose = INFO;
		super(); 

		if(AM.args.length > 0){
			parse();
		}else{
			CC.print(INFO+help());
			AM.exit();
		}

	}// new()

	function parse()
	{
		if(AM.args[0].good()){
			var path = AM.args[0]; 
//			if(args[1].good())path = args[1] + path;  trace(args);
			var script = path.open(); 
			var lines = script.splitt("\n");
			var tmp = new Array<String>();
			for(l in lines){
				if(l.substr(0,1) != "#")tmp.push(l);
			}
			script = tmp.join("\n");  
			if(script.good("err: no script")){ 
				SH.args = AM.args;
				try SH.execute(script) catch(m:Dynamic){trace(m);}
			}
		}	
	}// parse()

	override function help(opt="")
	{
		var r = 'Usage:\n hxtool script.hxs';

		return r;
	}// help()


	public static function main() 
	{
 		var app = new Hxtool();
//		CC.printLog();
	}// main()

}// Hxtool

