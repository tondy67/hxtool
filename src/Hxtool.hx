package;
/**
 * Hxtool mimics Bash Shell
 **/
import abv.AM;
import abv.io.SH;

using abv.ds.TP;
using abv.lib.CC;
using abv.ST;

class Hxtool extends AM{
	
	public function new(id:String)
	{
		AM.verbose = DEBUG;
		super(id); 
	}// new()

	override function create()
	{
		if(args.length > 0){
			parse();
		}else{
			CC.print(INFO+help());
			exit();
		}
	}// create()
	
	function parse()
	{
		if(args[0].good()){
			var path = args[0]; 
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

	function help(opt="")
	{
		var r = 'Usage:\n hxtool script.hxs';

		return r;
	}// help()


	public static function main() 
	{
 		var app = new Hxtool("hxtool");
//		CC.printLog();
	}// main()

}// Hxtool

